.class Lcom/aee/sport/magicam/playback/PlayBackActivity$5;
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
    iput-object p1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$5;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f020085

    .line 237
    const/4 v1, 0x3

    new-array v0, v1, [Landroid/graphics/Bitmap;

    .line 238
    .local v0, "bitmaps":[Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$5;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    iget-object v1, v1, Lcom/aee/sport/magicam/playback/PlayBackActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v4

    .line 239
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$5;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    iget-object v1, v1, Lcom/aee/sport/magicam/playback/PlayBackActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v5

    .line 240
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$5;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    iget-object v2, v2, Lcom/aee/sport/magicam/playback/PlayBackActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 241
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$5;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    invoke-static {v1}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->access$1(Lcom/aee/sport/magicam/playback/PlayBackActivity;)Lcom/aee/sport/magicam/widget/MyRotationView;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/aee/sport/magicam/widget/MyRotationView;->setTypeAndImgs(I[Landroid/graphics/Bitmap;)V

    .line 242
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity$5;->this$0:Lcom/aee/sport/magicam/playback/PlayBackActivity;

    invoke-static {v1}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->access$2(Lcom/aee/sport/magicam/playback/PlayBackActivity;)Lcom/aee/sport/magicam/widget/MyRotationView;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Lcom/aee/sport/magicam/widget/MyRotationView;->setTypeAndImgs(I[Landroid/graphics/Bitmap;)V

    .line 243
    return-void
.end method
