.class Lcom/aee/sport/magicam/playback/ImageShowActivity$3;
.super Ljava/lang/Object;
.source "ImageShowActivity.java"

# interfaces
.implements Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/playback/ImageShowActivity;->deleterFile(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/playback/ImageShowActivity;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/playback/ImageShowActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity$3;->this$0:Lcom/aee/sport/magicam/playback/ImageShowActivity;

    iput p2, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity$3;->val$position:I

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public returnInfo(Ljava/lang/Object;)V
    .locals 4
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 169
    move-object v0, p1

    check-cast v0, Lcom/aee/sport/magicam/bean/ReceiveMsg;

    .line 170
    .local v0, "receiveMsg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v1

    if-nez v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity$3;->this$0:Lcom/aee/sport/magicam/playback/ImageShowActivity;

    const/4 v2, 0x1

    iget v3, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity$3;->val$position:I

    invoke-static {v1, v2, v3}, Lcom/aee/sport/magicam/playback/ImageShowActivity;->access$2(Lcom/aee/sport/magicam/playback/ImageShowActivity;ZI)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity$3;->this$0:Lcom/aee/sport/magicam/playback/ImageShowActivity;

    const/4 v2, 0x0

    iget v3, p0, Lcom/aee/sport/magicam/playback/ImageShowActivity$3;->val$position:I

    invoke-static {v1, v2, v3}, Lcom/aee/sport/magicam/playback/ImageShowActivity;->access$2(Lcom/aee/sport/magicam/playback/ImageShowActivity;ZI)V

    goto :goto_0
.end method
