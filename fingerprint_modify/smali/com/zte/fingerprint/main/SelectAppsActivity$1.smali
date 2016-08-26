.class Lcom/zte/fingerprint/main/SelectAppsActivity$1;
.super Ljava/util/HashMap;
.source "SelectAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/main/SelectAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "$anonymous0"    # I

    .prologue
    const/4 v2, -0x1

    .line 57
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 58
    const-string v0, "com.zte.camera,com.zte.camera.CameraActivity"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/zte/fingerprint/main/SelectAppsActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "com.tencent.mm,com.tencent.mm.ui.LauncherUI"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/zte/fingerprint/main/SelectAppsActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "com.tencent.mobileqq,com.tencent.mobileqq.activity.SplashActivity"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/zte/fingerprint/main/SelectAppsActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "com.sina.weibo,com.sina.weibo.SplashActivity"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/zte/fingerprint/main/SelectAppsActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void
.end method
