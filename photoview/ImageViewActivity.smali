.class public Lcom/aee/sport/magicam/photoview/ImageViewActivity;
.super Lcom/aee/sport/magicam/BaseActivity;
.source "ImageViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aee/sport/magicam/photoview/ImageViewActivity$CustomBitmapLoadCallBack;
    }
.end annotation


# static fields
.field private static final TRANSPARENT_DRAWABLE:Landroid/graphics/drawable/ColorDrawable;

.field private static delPath:Ljava/lang/String;


# instance fields
.field private btdelete:Landroid/widget/ImageView;

.field private btdown:Landroid/widget/ImageView;

.field private curname:Ljava/lang/String;

.field private dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

.field private fileURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "DCIM/100MEDIA/"

    sput-object v0, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->delPath:Ljava/lang/String;

    .line 115
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x106000d

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->TRANSPARENT_DRAWABLE:Landroid/graphics/drawable/ColorDrawable;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/aee/sport/magicam/BaseActivity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->fileURL:Ljava/lang/String;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/photoview/ImageViewActivity;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->fadeInDisplay(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1(Lcom/aee/sport/magicam/photoview/ImageViewActivity;)Lcom/aee/sport/magicam/softwareupdate/DialogView;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->delPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/aee/sport/magicam/photoview/ImageViewActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->curname:Ljava/lang/String;

    return-object v0
.end method

.method private disDialog()V
    .locals 6

    .prologue
    .line 140
    new-instance v0, Lcom/aee/sport/magicam/softwareupdate/DialogView;

    iget-object v1, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/photoview/ImageViewActivity$1;-><init>(Lcom/aee/sport/magicam/photoview/ImageViewActivity;)V

    .line 190
    const/4 v3, 0x1

    const v4, 0x7f0800a7

    const v5, 0x7f08000e

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/softwareupdate/DialogView;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;III)V

    .line 140
    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    .line 191
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    const v1, 0x7f0800ab

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->setOkString(I)V

    .line 192
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->dialogView1:Lcom/aee/sport/magicam/softwareupdate/DialogView;

    const v1, 0x7f0800ac

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->setCancelString(I)V

    .line 193
    return-void
.end method

.method private fadeInDisplay(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 117
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    sget-object v3, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->TRANSPARENT_DRAWABLE:Landroid/graphics/drawable/ColorDrawable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 118
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v1, v2

    .line 117
    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 119
    .local v0, "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 121
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 131
    :goto_0
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onClick(Landroid/view/View;)V

    .line 132
    return-void

    .line 127
    :pswitch_0
    invoke-direct {p0}, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->disDialog()V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c005b
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v2, 0x7f030017

    invoke-virtual {p0, v2}, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fileURL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->fileURL:Ljava/lang/String;

    .line 51
    iget-object v2, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->fileURL:Ljava/lang/String;

    iget-object v3, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->fileURL:Ljava/lang/String;

    const-string v4, "DCIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->fileURL:Ljava/lang/String;

    const-string v5, "DCIM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0xe

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->delPath:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fileName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->curname:Ljava/lang/String;

    .line 57
    iget-object v2, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->curname:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->setTitleText(Ljava/lang/String;)V

    .line 58
    const v2, 0x7f0c004f

    invoke-virtual {p0, v2}, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aee/sport/magicam/widget/CircleProgressBar;

    .line 59
    .local v1, "progress":Lcom/aee/sport/magicam/widget/CircleProgressBar;
    const v2, 0x7f0c004e

    invoke-virtual {p0, v2}, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/photoview/PhotoView;

    .line 61
    .local v0, "photoView":Lcom/aee/sport/magicam/photoview/PhotoView;
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aee/sport/magicam/AeeApplication;->getBitmapUtils()Lcom/lidroid/xutils/BitmapUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/aee/sport/magicam/photoview/ImageViewActivity;->fileURL:Ljava/lang/String;

    new-instance v4, Lcom/aee/sport/magicam/photoview/ImageViewActivity$CustomBitmapLoadCallBack;

    invoke-direct {v4, p0, v1}, Lcom/aee/sport/magicam/photoview/ImageViewActivity$CustomBitmapLoadCallBack;-><init>(Lcom/aee/sport/magicam/photoview/ImageViewActivity;Lcom/aee/sport/magicam/widget/CircleProgressBar;)V

    invoke-virtual {v2, v0, v3, v4}, Lcom/lidroid/xutils/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V

    .line 63
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onPause()V

    .line 73
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onResume()V

    .line 68
    return-void
.end method
