.class public Lcom/mediatek/fmradio/FmRecorder;
.super Ljava/lang/Object;
.source "FmRecorder.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/fmradio/FmRecorder$OnRecorderStateChangedListener;
    }
.end annotation


# static fields
.field public static final ERROR_PLAYER_INTERNAL:I = 0x4

.field public static final ERROR_RECORDER_INTERNAL:I = 0x3

.field public static final ERROR_RECORDER_INVALID_STATE:I = 0x5

.field public static final ERROR_SDCARD_NOT_PRESENT:I = 0x0

.field public static final ERROR_SDCARD_WRITE_FAILED:I = 0x2

.field public static final ERROR_STORAGE_INSUFFICIENT_SPACE:I = 0x1

.field private static final FM_RECORD_FOLDER:Ljava/lang/String; = "Records"

.field public static final RECORDING_FILE_EXTENSION:Ljava/lang/String; = ".m4a"

.field private static final RECORDING_FILE_PREFIX:Ljava/lang/String; = "FM"

.field private static final RECORDING_FILE_SOURCE:Ljava/lang/String; = "FM records"

.field private static final RECORDING_FILE_TYPE:Ljava/lang/String; = "audio/mp4"

.field public static final STATE_IDLE:I = 0x5

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_PLAYBACK:I = 0x7

.field public static final STATE_RECORDING:I = 0x6

.field private static final TAG:Ljava/lang/String; = "FmRx/Recorder"


# instance fields
.field public mInternalState:I

.field private mIsRecordingFileSaved:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mRecordFile:Ljava/io/File;

.field private mRecordStartTime:J

.field private mRecordTime:J

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mStateListener:Lcom/mediatek/fmradio/FmRecorder$OnRecorderStateChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mInternalState:I

    .line 101
    iput-wide v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordTime:J

    .line 103
    iput-wide v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordStartTime:J

    .line 105
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mIsRecordingFileSaved:Z

    .line 109
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mStateListener:Lcom/mediatek/fmradio/FmRecorder$OnRecorderStateChangedListener;

    .line 111
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 113
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 66
    return-void
.end method

.method private addToMediaDB(Landroid/content/Context;Landroid/content/ContentValues;)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 706
    const/4 v7, 0x0

    .line 707
    .local v7, "insertResult":Landroid/net/Uri;
    const/4 v8, -0x1

    .line 709
    .local v8, "recordingId":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 710
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 711
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "_data=?"

    .line 712
    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    .line 709
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 714
    .local v6, "existItems":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 717
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 720
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 721
    const-string v0, "FmRx/Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "existing items update recording id"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 721
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 724
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 725
    const-string v2, "_data=?"

    .line 726
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 723
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 740
    const/4 v6, 0x0

    .line 743
    :cond_1
    return v8

    .line 730
    :cond_2
    :try_start_1
    const-string v0, "FmRx/Recorder"

    const-string v1, "addToMediaDB: insert data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 732
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 731
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 733
    if-eqz v7, :cond_0

    .line 735
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 734
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 738
    goto :goto_0

    :catchall_0
    move-exception v0

    .line 739
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 740
    const/4 v6, 0x0

    .line 741
    throw v0
.end method

.method private addToPlaylist(Landroid/content/Context;II)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "playlistId"    # I
    .param p3, "recordingId"    # I

    .prologue
    .line 748
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    const-string v0, "external"

    int-to-long v2, p2

    .line 751
    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 753
    .local v1, "membersUri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 754
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "audio_id"

    aput-object v4, v2, v3

    .line 755
    const-string v3, "audio_id=?"

    .line 756
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    .line 753
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 757
    .local v8, "itemInMembers":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 759
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 765
    const-string v0, "FmRx/Recorder"

    .line 766
    const-string v2, "addToPlaylist new item already in playlists.members table"

    .line 765
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 771
    const/4 v8, 0x0

    .line 767
    goto :goto_0

    .line 769
    :catchall_0
    move-exception v0

    .line 770
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 771
    const/4 v8, 0x0

    .line 772
    throw v0

    .line 770
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 771
    const/4 v8, 0x0

    .line 774
    :cond_3
    const-string v0, "FmRx/Recorder"

    const-string v2, "addToPlaylist: query members"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 776
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 775
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 778
    .local v9, "membersCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 780
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 782
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 783
    .local v6, "base":I
    const/4 v10, 0x2

    .line 784
    .local v10, "size":I
    new-instance v7, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v7, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 785
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v0, "play_order"

    .line 786
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 785
    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 787
    const-string v0, "audio_id"

    .line 788
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 787
    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 789
    const-string v0, "FmRx/Recorder"

    const-string v2, "addToPlaylist: insert to members"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 793
    .end local v6    # "base":I
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v10    # "size":I
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 794
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 792
    :catchall_1
    move-exception v0

    .line 793
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 794
    const/4 v9, 0x0

    .line 795
    throw v0
.end method

.method private convertNameByNum(I)Ljava/lang/String;
    .locals 3
    .param p1, "namenum"    # I

    .prologue
    .line 869
    const-string v0, "FM_"

    .line 870
    .local v0, "filename":Ljava/lang/String;
    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    .line 871
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 877
    :goto_0
    return-object v0

    .line 872
    :cond_0
    const/16 v1, 0x64

    if-ge p1, v1, :cond_1

    .line 873
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 874
    goto :goto_0

    .line 875
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private createPlaylist(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 692
    const/4 v2, 0x1

    .line 693
    .local v2, "size":I
    new-instance v0, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 694
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "name"

    const-string v4, "FM records"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string v3, "FmRx/Recorder"

    const-string v4, "addToPlaylist: insert playlist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 697
    const-string v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 696
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 698
    .local v1, "newPlaylistUri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 699
    const-string v3, "FmRx/Recorder"

    const-string v4, "createPlaylist: insert failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/4 v3, -0x1

    .line 702
    :goto_0
    return v3

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0
.end method

.method private createRecordFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;

    .prologue
    .line 841
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 842
    .local v3, "mFileDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 843
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 845
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 846
    .local v0, "allFileNames":[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 847
    const-string v6, "FmRx/Recorder"

    const-string v7, "allFileNames = null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_1
    const/4 v5, 0x1

    .line 850
    .local v5, "num":I
    const-string v2, ""

    .line 851
    .local v2, "filenamebynum":Ljava/lang/String;
    const/4 v1, 0x1

    .line 852
    .local v1, "exist":Z
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 865
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 853
    :cond_3
    invoke-direct {p0, v5}, Lcom/mediatek/fmradio/FmRecorder;->convertNameByNum(I)Ljava/lang/String;

    move-result-object v2

    .line 854
    const/4 v1, 0x0

    .line 855
    array-length v7, v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v4, v0, v6

    .line 856
    .local v4, "name":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 857
    add-int/lit8 v5, v5, 0x1

    .line 858
    const/4 v1, 0x1

    .line 859
    goto :goto_0

    .line 861
    :cond_4
    const/4 v1, 0x0

    .line 855
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public static getAudioSourceValue(Landroid/content/Context;Ljava/lang/String;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceType"    # Ljava/lang/String;

    .prologue
    .line 881
    const/16 v5, 0x63

    .line 882
    .local v5, "value":I
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 883
    :cond_0
    const-string v7, "FmRx/Recorder"

    const-string v8, "getAudioSourceValue---param null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 896
    .end local v5    # "value":I
    .local v6, "value":I
    :goto_0
    return v6

    .line 887
    .end local v6    # "value":I
    .restart local v5    # "value":I
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 888
    .local v0, "cl":Ljava/lang/ClassLoader;
    const-string v7, "android.media.MediaRecorder$AudioSource"

    invoke-virtual {v0, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 889
    .local v3, "mRecorder":Ljava/lang/Class;
    invoke-virtual {v3, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 890
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 891
    .local v4, "typeValue":I
    move v5, v4

    .line 892
    const-string v7, "FmRx/Recorder"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getAudioSourceValue---value="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "mRecorder":Ljava/lang/Class;
    .end local v4    # "typeValue":I
    :goto_1
    move v6, v5

    .line 896
    .end local v5    # "value":I
    .restart local v6    # "value":I
    goto :goto_0

    .line 893
    .end local v6    # "value":I
    .restart local v5    # "value":I
    :catch_0
    move-exception v1

    .line 894
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getPlaylistId(Landroid/content/Context;)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 672
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 673
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 674
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    .line 675
    const-string v3, "_data=?"

    .line 676
    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioUtils;->getPlaylistPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 677
    const-string v8, "FM records"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    .line 672
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 678
    .local v6, "playlistCursor":Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 679
    .local v7, "playlistId":I
    if-eqz v6, :cond_1

    .line 681
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 685
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 688
    :cond_1
    return v7

    .line 684
    :catchall_0
    move-exception v0

    .line 685
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 686
    throw v0
.end method

.method private setError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 588
    const-string v0, "FmRx/Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mStateListener:Lcom/mediatek/fmradio/FmRecorder$OnRecorderStateChangedListener;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mStateListener:Lcom/mediatek/fmradio/FmRecorder$OnRecorderStateChangedListener;

    invoke-interface {v0, p1}, Lcom/mediatek/fmradio/FmRecorder$OnRecorderStateChangedListener;->onRecorderError(I)V

    .line 592
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 601
    iput p1, p0, Lcom/mediatek/fmradio/FmRecorder;->mInternalState:I

    .line 602
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mStateListener:Lcom/mediatek/fmradio/FmRecorder$OnRecorderStateChangedListener;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mStateListener:Lcom/mediatek/fmradio/FmRecorder$OnRecorderStateChangedListener;

    invoke-interface {v0, p1}, Lcom/mediatek/fmradio/FmRecorder$OnRecorderStateChangedListener;->onRecorderStateChanged(I)V

    .line 605
    :cond_0
    return-void
.end method

.method private stopPlayer()V
    .locals 3

    .prologue
    .line 824
    monitor-enter p0

    .line 825
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 827
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 833
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 834
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 824
    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 838
    :goto_0
    return-void

    .line 828
    :catch_0
    move-exception v0

    .line 829
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v1, "FmRx/Recorder"

    const-string v2, "IllegalStateException while discard recording!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FmRecorder;->setError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 833
    :try_start_4
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 834
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 831
    monitor-exit p0

    goto :goto_0

    .line 824
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 832
    :catchall_1
    move-exception v1

    .line 833
    :try_start_5
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 834
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 835
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private stopRecorder()V
    .locals 5

    .prologue
    .line 800
    monitor-enter p0

    .line 801
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 803
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    .line 804
    const-string v2, "FmRx/Recorder"

    const-string v3, "stopRecorder: stop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 815
    :try_start_2
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 816
    const-string v2, "FmRx/Recorder"

    const-string v3, "stopRecorder: release"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 800
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 821
    return-void

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "ex":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v2, "FmRx/Recorder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IllegalStateException ocurr"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/mediatek/fmradio/FmRecorder;->setError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 815
    :try_start_4
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 816
    const-string v2, "FmRx/Recorder"

    const-string v3, "stopRecorder: release"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_0

    .line 800
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 808
    :catch_1
    move-exception v1

    .line 812
    .local v1, "exception":Ljava/lang/RuntimeException;
    :try_start_5
    const-string v2, "FmRx/Recorder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RuntimeException ocurr"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/mediatek/fmradio/FmRecorder;->setError(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 815
    :try_start_6
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 816
    const-string v2, "FmRx/Recorder"

    const-string v3, "stopRecorder: release"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_0

    .line 814
    .end local v1    # "exception":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v2

    .line 815
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 816
    const-string v3, "FmRx/Recorder"

    const-string v4, "stopRecorder: release"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 818
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method


# virtual methods
.method public addCurrentRecordingToDb(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 614
    const-string v11, "FmRx/Recorder"

    const-string v12, ">> addCurrentRecordingToDb"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v11, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 616
    :cond_0
    const-string v11, "FmRx/Recorder"

    const-string v12, "<< addCurrentRecordingToDb: file does not exists"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_1
    :goto_0
    return-void

    .line 619
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 620
    .local v0, "curTime":J
    iget-object v11, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 621
    .local v4, "modDate":J
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 627
    .local v3, "date":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRecorder;->getRecordingName()Ljava/lang/String;

    move-result-object v10

    .line 634
    .local v10, "title":Ljava/lang/String;
    const/16 v9, 0x8

    .line 635
    .local v9, "size":I
    new-instance v2, Landroid/content/ContentValues;

    const/16 v11, 0x8

    invoke-direct {v2, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 636
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v11, "is_music"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 637
    const-string v11, "title"

    invoke-virtual {v2, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v11, "_data"

    iget-object v12, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const/16 v6, 0x3e8

    .line 640
    .local v6, "oneSecond":I
    const-string v11, "date_added"

    const-wide/16 v12, 0x3e8

    div-long v12, v0, v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 641
    const-string v11, "date_modified"

    .line 642
    const-wide/16 v12, 0x3e8

    div-long v12, v4, v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 641
    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 643
    const-string v11, "mime_type"

    const-string v12, "audio/mp4"

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v11, "album"

    const-string v12, "FM records"

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v11, "duration"

    iget-wide v12, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordTime:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 648
    invoke-direct {p0, p1, v2}, Lcom/mediatek/fmradio/FmRecorder;->addToMediaDB(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v8

    .line 649
    .local v8, "recordingId":I
    const/4 v11, -0x1

    if-eq v11, v8, :cond_1

    .line 653
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRecorder;->getPlaylistId(Landroid/content/Context;)I

    move-result v7

    .line 654
    .local v7, "playlistId":I
    const/4 v11, -0x1

    if-ne v11, v7, :cond_3

    .line 656
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRecorder;->createPlaylist(Landroid/content/Context;)I

    move-result v7

    .line 658
    :cond_3
    const/4 v11, -0x1

    if-eq v11, v7, :cond_1

    .line 663
    invoke-direct {p0, p1, v7, v8}, Lcom/mediatek/fmradio/FmRecorder;->addToPlaylist(Landroid/content/Context;II)V

    .line 668
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 667
    invoke-static {p1, v11, v12, v13}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto/16 :goto_0
.end method

.method public discardRecording()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 424
    const-string v0, "FmRx/Recorder"

    const-string v1, ">> discardRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v0, 0x6

    iget v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mInternalState:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_3

    .line 427
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRecorder;->stopRecorder()V

    .line 433
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mIsRecordingFileSaved:Z

    if-nez v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    const-string v0, "FmRx/Recorder"

    const-string v1, "discardRecording: deletion failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    .line 439
    iput-wide v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordStartTime:J

    .line 440
    iput-wide v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordTime:J

    .line 442
    :cond_2
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRecorder;->setState(I)V

    .line 443
    const-string v0, "FmRx/Recorder"

    const-string v1, "<< discardRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-void

    .line 429
    :cond_3
    const/4 v0, 0x7

    iget v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mInternalState:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRecorder;->stopPlayer()V

    goto :goto_0
.end method

.method public getRecordingName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 338
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".m4a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ".m4a"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 343
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 344
    const-string v3, ".m4a"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 343
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 348
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecordingNameWithPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 357
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 358
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".m4a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ".m4a"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 362
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 363
    const-string v3, ".m4a"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 362
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 365
    :cond_0
    const-string v1, "FmRx/Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRecordingNameWithPath: fileName is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .end local v0    # "fileName":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mInternalState:I

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 497
    const-string v0, "FmRx/Recorder"

    const-string v1, ">> MediaPlayer.onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    monitor-enter p0

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 501
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 498
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRecorder;->setState(I)V

    .line 506
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mStateListener:Lcom/mediatek/fmradio/FmRecorder$OnRecorderStateChangedListener;

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mStateListener:Lcom/mediatek/fmradio/FmRecorder$OnRecorderStateChangedListener;

    invoke-interface {v0}, Lcom/mediatek/fmradio/FmRecorder$OnRecorderStateChangedListener;->onPlayRecordFileComplete()V

    .line 509
    :cond_1
    const-string v0, "FmRx/Recorder"

    const-string v1, "<< MediaPlayer.onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-void

    .line 498
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 555
    const-string v0, "FmRx/Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaRecorder.onError: what="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRecorder;->stopRecorder()V

    .line 557
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRecorder;->setError(I)V

    .line 558
    const/4 v0, 0x6

    iget v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mInternalState:I

    if-ne v0, v1, :cond_0

    .line 559
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRecorder;->setState(I)V

    .line 561
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 526
    const-string v1, "FmRx/Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MediaPlayer.onError: what="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extra="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/16 v1, 0x64

    if-ne v1, p2, :cond_2

    move v0, p2

    .line 529
    .local v0, "error":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRecorder;->setError(I)V

    .line 530
    monitor-enter p0

    .line 531
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 533
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 530
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    const/4 v1, 0x7

    iget v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mInternalState:I

    if-ne v1, v2, :cond_1

    .line 537
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FmRecorder;->setState(I)V

    .line 539
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 528
    .end local v0    # "error":I
    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 530
    .restart local v0    # "error":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public recordTime()J
    .locals 4

    .prologue
    .line 317
    const/4 v0, 0x6

    iget v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mInternalState:I

    if-ne v0, v1, :cond_0

    .line 318
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordTime:J

    .line 320
    :cond_0
    iget-wide v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordTime:J

    return-wide v0
.end method

.method public registerRecorderStateListener(Lcom/mediatek/fmradio/FmRecorder$OnRecorderStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/fmradio/FmRecorder$OnRecorderStateChangedListener;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRecorder;->mStateListener:Lcom/mediatek/fmradio/FmRecorder$OnRecorderStateChangedListener;

    .line 455
    return-void
.end method

.method public resetRecorder()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 567
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 569
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 573
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 575
    :cond_1
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    .line 576
    iput-wide v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordStartTime:J

    .line 577
    iput-wide v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordTime:J

    .line 578
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mInternalState:I

    .line 579
    return-void
.end method

.method public saveRecording(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 381
    const-string v2, "FmRx/Recorder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ">> saveRecording("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    if-nez v2, :cond_0

    .line 383
    const-string v2, "FmRx/Recorder"

    const-string v3, "<< saveRecording: recording file is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 388
    .local v0, "parentFile":Ljava/io/File;
    if-nez v0, :cond_1

    .line 389
    const-string v2, "FmRx/Recorder"

    const-string v3, "<< saveRecording: parent recording file is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 394
    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRecorder;->getRecordingName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 395
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    const-string v4, ".m4a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 395
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .local v1, "sdFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 398
    const-string v2, "FmRx/Recorder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "A file with the same new name will be deleted: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 398
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 401
    const-string v2, "FmRx/Recorder"

    const-string v3, "can\'t delete the file already exits"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_2
    if-eqz v0, :cond_4

    .line 405
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 406
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".m4a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    .line 406
    if-nez v2, :cond_3

    .line 407
    const-string v2, "FmRx/Recorder"

    const-string v3, "can\'t rename file, use default name to save"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRecorder;->getRecordingName()Ljava/lang/String;

    move-result-object p2

    .line 410
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 411
    const-string v5, ".m4a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    .line 414
    .end local v1    # "sdFile":Ljava/io/File;
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mIsRecordingFileSaved:Z

    .line 416
    invoke-virtual {p0, p1}, Lcom/mediatek/fmradio/FmRecorder;->addCurrentRecordingToDb(Landroid/content/Context;)V

    .line 417
    const-string v2, "FmRx/Recorder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<< saveRecording("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public startPlayback()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 252
    const-string v1, "FmRx/Recorder"

    const-string v2, ">> startPlayback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    if-nez v1, :cond_0

    .line 254
    const-string v1, "FmRx/Recorder"

    const-string v2, "no file to playback!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_0
    return-void

    .line 258
    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 261
    const-string v1, "FmRx/Recorder"

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MediaPlayer.setDataSource("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 262
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 265
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 266
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 267
    const-string v1, "FmRx/Recorder"

    const-string v2, "MediaPlayer.prepare()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    .line 290
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FmRecorder;->setState(I)V

    .line 291
    const-string v1, "FmRx/Recorder"

    const-string v2, "<< startPlayback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "FmRx/Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception while trying to playback recording file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-direct {p0, v4}, Lcom/mediatek/fmradio/FmRecorder;->setError(I)V

    goto :goto_0

    .line 274
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "FmRx/Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception while trying to playback recording file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct {p0, v4}, Lcom/mediatek/fmradio/FmRecorder;->setError(I)V

    goto/16 :goto_0

    .line 279
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "FmRx/Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception while trying to playback recording file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-direct {p0, v4}, Lcom/mediatek/fmradio/FmRecorder;->setError(I)V

    goto/16 :goto_0

    .line 284
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "FmRx/Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception while trying to playback recording file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-direct {p0, v4}, Lcom/mediatek/fmradio/FmRecorder;->setError(I)V

    goto/16 :goto_0
.end method

.method public startRecording(Landroid/content/Context;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const-string v21, "FmRx/Recorder"

    const-string v22, ">> startRecording"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mediatek/fmradio/FmRecorder;->mRecordTime:J

    .line 125
    const-string v21, "mounted"

    invoke-static/range {p1 .. p1}, Lcom/mediatek/fmradio/FmRadioUtils;->getDefaultStorageState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 126
    const-string v21, "FmRx/Recorder"

    const-string v22, "No external storage available"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/fmradio/FmRecorder;->setError(I)V

    .line 211
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/mediatek/fmradio/FmRadioUtils;->getDefaultStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 134
    .local v14, "recordingSdcard":Ljava/lang/String;
    invoke-static {v14}, Lcom/mediatek/fmradio/FmRadioUtils;->hasEnoughSpace(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 135
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/fmradio/FmRecorder;->setError(I)V

    .line 136
    const-string v21, "FmRx/Recorder"

    const-string v22, "SD card does not have sufficient space!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_1
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v16, "sdDir":Ljava/io/File;
    const-string v21, "FmRx/Recorder"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "external storage dir = "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v13, Ljava/io/File;

    const-string v21, "Records"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    .local v13, "recordingDir":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v21

    if-nez v21, :cond_2

    .line 146
    const-string v21, "FmRx/Recorder"

    const-string v22, "A FILE with name \"FM Recording\" already exists!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/fmradio/FmRecorder;->setError(I)V

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_3

    .line 150
    invoke-virtual {v13}, Ljava/io/File;->mkdir()Z

    move-result v11

    .line 151
    .local v11, "mkdirResult":Z
    if-nez v11, :cond_3

    .line 152
    const/16 v21, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/fmradio/FmRecorder;->setError(I)V

    goto :goto_0

    .line 157
    .end local v11    # "mkdirResult":Z
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 158
    .local v6, "curTime":J
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 159
    .local v8, "date":Ljava/util/Date;
    new-instance v17, Ljava/text/SimpleDateFormat;

    .line 160
    const-string v21, "yyyyMMdd_HHmmss"

    sget-object v22, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 159
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 161
    .local v17, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    .line 162
    .local v20, "time":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v19, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v21, "FM"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 164
    const-string v22, ".m4a"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 166
    .local v12, "name":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    const-string v22, ".m4a"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/mediatek/fmradio/FmRecorder;->createRecordFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 167
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v0, v13, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    .line 169
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->createNewFile()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 170
    const-string v21, "FmRx/Recorder"

    const-string v22, "createNewFile success"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_4
    :try_start_1
    const-string v21, "FmRx/Recorder"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "new record file is:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v21, Landroid/media/MediaRecorder;

    invoke-direct/range {v21 .. v21}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 183
    const-string v21, "FmRx/Recorder"

    const-string v22, "startRecording: create new media record instance"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 185
    const-string v21, "FM_TUNER"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/mediatek/fmradio/FmRecorder;->getAudioSourceValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    .line 186
    .local v18, "sourceType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 189
    const v15, 0xac44

    .line 190
    .local v15, "samplingRate":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    const v22, 0xac44

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 191
    const v4, 0x1f400

    .line 192
    .local v4, "bitRate":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    const v22, 0x1f400

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 193
    const/4 v5, 0x2

    .line 194
    .local v5, "channels":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaRecorder;->prepare()V

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mediatek/fmradio/FmRecorder;->mRecordStartTime:J

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaRecorder;->start()V

    .line 199
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/fmradio/FmRecorder;->mIsRecordingFileSaved:Z

    .line 200
    const-string v21, "FmRx/Recorder"

    const-string v22, "startRecording: start"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/fmradio/FmRecorder;->setState(I)V

    .line 210
    const-string v21, "FmRx/Recorder"

    const-string v22, "<< startRecording"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 172
    .end local v4    # "bitRate":I
    .end local v5    # "channels":I
    .end local v15    # "samplingRate":I
    .end local v18    # "sourceType":I
    :catch_0
    move-exception v10

    .line 173
    .local v10, "ioex":Ljava/io/IOException;
    const-string v21, "FmRx/Recorder"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "IOException while createTempFile: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 175
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/fmradio/FmRecorder;->setError(I)V

    goto/16 :goto_0

    .line 201
    .end local v10    # "ioex":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 202
    .local v9, "e":Ljava/lang/Exception;
    const-string v21, "FmRx/Recorder"

    const-string v22, "Exception while starting recording!"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    .line 206
    :cond_5
    const/16 v21, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/fmradio/FmRecorder;->setError(I)V

    goto/16 :goto_0
.end method

.method public stopPlayback()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 298
    const-string v0, "FmRx/Recorder"

    const-string v1, ">> stopPlayback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    iget v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mInternalState:I

    if-ne v0, v1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/fmradio/FmRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    :cond_0
    const-string v0, "FmRx/Recorder"

    const-string v1, "stopPlayback called in wrong state!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-direct {p0, v2}, Lcom/mediatek/fmradio/FmRecorder;->setState(I)V

    .line 309
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRecorder;->stopPlayer()V

    .line 307
    invoke-direct {p0, v2}, Lcom/mediatek/fmradio/FmRecorder;->setState(I)V

    .line 308
    const-string v0, "FmRx/Recorder"

    const-string v1, "<< stopPlayback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopRecording(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    const-string v1, "FmRx/Recorder"

    const-string v2, ">> stopRecording"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v1, 0x6

    iget v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mInternalState:I

    if-eq v1, v2, :cond_0

    .line 219
    const-string v1, "FmRx/Recorder"

    const-string v2, "stopRecording() called in wrong state!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "filePath":Ljava/lang/String;
    const-string v1, "FmRx/Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FilePath: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordTime:J

    .line 225
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRecorder;->stopRecorder()V

    .line 226
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FmRecorder;->setState(I)V

    .line 228
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioUtils;->isFileInSdcard()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/SD card/Records/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_1
    const-string v1, "/mnt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mStateListener:Lcom/mediatek/fmradio/FmRecorder$OnRecorderStateChangedListener;

    if-eqz v1, :cond_2

    .line 237
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRecorder;->mStateListener:Lcom/mediatek/fmradio/FmRecorder$OnRecorderStateChangedListener;

    .line 238
    const v2, 0x7f0900cb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-interface {v1, v2}, Lcom/mediatek/fmradio/FmRecorder$OnRecorderStateChangedListener;->onShowToast(Ljava/lang/String;)V

    .line 243
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRecorder;->getRecordingName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/fmradio/FmRecorder;->saveRecording(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    const-string v1, "FmRx/Recorder"

    const-string v2, "<< stopRecording"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/Phone/Records/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
