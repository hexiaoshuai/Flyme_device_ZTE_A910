.class Lcom/mediatek/simservs/client/SimServs$1;
.super Landroid/content/BroadcastReceiver;
.source "SimServs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/simservs/client/SimServs;->setContext(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/simservs/client/SimServs;


# direct methods
.method constructor <init>(Lcom/mediatek/simservs/client/SimServs;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs$1;->this$0:Lcom/mediatek/simservs/client/SimServs;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 244
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_GBA_INTERNAL_SERVER_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const-string v1, "SimServs"

    const-string v2, "ACTION_GBA_INTERNAL_SERVER_ERROR received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/simservs/client/SimServs;->sIsGbaInternalServerError:Z

    .line 249
    :cond_0
    return-void
.end method
