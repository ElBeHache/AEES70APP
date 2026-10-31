.class Lcom/aee/sport/magicam/playback/PlayBackActivity$4;
.super Ljava/lang/Object;
.source "PlayBackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/playback/PlayBackActivity;->changeView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/playback/PlayBackActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$4;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 219
    sget-object v1, Lcom/aee/sport/magicam/utils/Constants;->GALLERY_PATH:Ljava/lang/String;

    invoke-static {v1}, Lcom/aee/sport/magicam/utils/FileUtils;->getLastThirdBitmap(Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    .line 220
    .local v0, "bitmaps1":[Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$4;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    invoke-static {v1}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->access$2(Lcom/aee/sport/magicam/playback/PlayBackActivity;)Lcom/aee/sport/magicam/widget/MyRotationView;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/aee/sport/magicam/widget/MyRotationView;->setTypeAndImgs(I[Landroid/graphics/Bitmap;)V

    .line 221
    return-void
.end method
