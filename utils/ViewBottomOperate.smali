.class public Lcom/aee/sport/magicam/utils/ViewBottomOperate;
.super Ljava/lang/Object;
.source "ViewBottomOperate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static isAction:Z

.field public static isOK:Z


# instance fields
.field private activity:Lcom/aee/sport/magicam/VideoPlayerActivity;

.field private continuousView:Landroid/view/View;

.field private fastShotView:Landroid/view/View;

.field private isBeginRecord:Z

.field public isClickMenu:Z

.field protected isContinuous:Z

.field protected isContinuousSelect:Z

.field protected isFastSelect:Z

.field private isFinish:Z

.field public isRecord:Z

.field public layoutRecord:Landroid/view/View;

.field private layout_view_bottom:Landroid/view/View;

.field private leftView:Landroid/view/View;

.field private menu:Landroid/widget/ImageView;

.field menuOnclick:Landroid/view/View$OnClickListener;

.field private menuWindow:Landroid/widget/PopupWindow;

.field public operate:Landroid/widget/ImageView;

.field public parseConfig:Lcom/aee/sport/magicam/parseconfig/ParseConfig;

.field private perspective:Landroid/widget/TextView;

.field private photoView:Landroid/view/View;

.field private pics:Landroid/widget/TextView;

.field private playBack:Landroid/view/View;

.field private playSet:Landroid/view/View;

.field private popHeight:I

.field private popWidth:I

.field private recordOperateStop:Landroid/view/View;

.field private remainder:Landroid/widget/TextView;

.field private resolution:Landroid/widget/TextView;

.field private resolutionArray:[Ljava/lang/String;

.field resolutionOnclick:Landroid/view/View$OnClickListener;

.field private resolutionPopHeight:I

.field private resolutionPopWidth:I

.field private resolutionPopWindow:Landroid/widget/PopupWindow;

.field private resolutionSelectionPotion:I

.field private resolutionTextView:Landroid/widget/TextView;

.field private rightView:Landroid/view/View;

.field private selectPosition:I

.field private videoTime:Landroid/widget/TextView;

.field private videoView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-boolean v0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isAction:Z

    .line 760
    sput-boolean v0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isOK:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/aee/sport/magicam/VideoPlayerActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/aee/sport/magicam/VideoPlayerActivity;

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->selectPosition:I

    .line 167
    iput v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionSelectionPotion:I

    .line 328
    iput-boolean v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isBeginRecord:Z

    .line 329
    iput-boolean v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isFinish:Z

    .line 686
    new-instance v0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$1;

    invoke-direct {v0, p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$1;-><init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionOnclick:Landroid/view/View$OnClickListener;

    .line 743
    iput-boolean v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isClickMenu:Z

    .line 747
    iput-boolean v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isContinuousSelect:Z

    .line 751
    iput-boolean v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isFastSelect:Z

    .line 755
    iput-boolean v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isContinuous:Z

    .line 759
    iput-boolean v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isRecord:Z

    .line 931
    new-instance v0, Lcom/aee/sport/magicam/utils/ViewBottomOperate$2;

    invoke-direct {v0, p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$2;-><init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menuOnclick:Landroid/view/View$OnClickListener;

    .line 177
    iput-object p1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->activity:Lcom/aee/sport/magicam/VideoPlayerActivity;

    .line 178
    invoke-direct {p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->initView()V

    .line 179
    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/utils/ViewBottomOperate;I)V
    .locals 0

    .prologue
    .line 556
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->selectResolutionAction(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/aee/sport/magicam/utils/ViewBottomOperate;Z)V
    .locals 0

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isFinish:Z

    return-void
.end method

.method static synthetic access$11(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Lcom/aee/sport/magicam/VideoPlayerActivity;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->activity:Lcom/aee/sport/magicam/VideoPlayerActivity;

    return-object v0
.end method

.method static synthetic access$12(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Landroid/view/View;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->recordOperateStop:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$13(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menu:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Landroid/view/View;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->playBack:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->selectPosition:I

    return v0
.end method

.method static synthetic access$3(Lcom/aee/sport/magicam/utils/ViewBottomOperate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 722
    invoke-direct {p0, p1, p2}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->sendMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/aee/sport/magicam/utils/ViewBottomOperate;Z)V
    .locals 0

    .prologue
    .line 830
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->onClickVideo(Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->videoTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/aee/sport/magicam/utils/ViewBottomOperate;Z)V
    .locals 0

    .prologue
    .line 848
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->onClickPhoto(Z)V

    return-void
.end method

.method static synthetic access$7(Lcom/aee/sport/magicam/utils/ViewBottomOperate;Z)V
    .locals 0

    .prologue
    .line 873
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->onClickFashShot(Z)V

    return-void
.end method

.method static synthetic access$8(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menuWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$9(Lcom/aee/sport/magicam/utils/ViewBottomOperate;Z)V
    .locals 0

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isBeginRecord:Z

    return-void
.end method

.method private iniMenuPopWindow()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 576
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->activity:Lcom/aee/sport/magicam/VideoPlayerActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/aee/sport/magicam/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 577
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030023

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 578
    .local v1, "layout":Landroid/view/View;
    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->videoView:Landroid/view/View;

    .line 579
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->videoView:Landroid/view/View;

    iget-object v3, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menuOnclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    const v2, 0x7f0c0005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->photoView:Landroid/view/View;

    .line 583
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->photoView:Landroid/view/View;

    iget-object v3, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menuOnclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    const v2, 0x7f0c007a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->fastShotView:Landroid/view/View;

    .line 586
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->fastShotView:Landroid/view/View;

    iget-object v3, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menuOnclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    const v2, 0x7f0c007b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->continuousView:Landroid/view/View;

    .line 590
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->continuousView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 591
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->continuousView:Landroid/view/View;

    iget-object v3, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menuOnclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v1, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menuWindow:Landroid/widget/PopupWindow;

    .line 597
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menuWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 598
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menuWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 599
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menuWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->update()V

    .line 600
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menuWindow:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 601
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menuWindow:Landroid/widget/PopupWindow;

    const v3, 0x7f070014

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 602
    invoke-virtual {v1, v5, v5}, Landroid/view/View;->measure(II)V

    .line 603
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menuWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->popWidth:I

    .line 604
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menuWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->popHeight:I

    .line 605
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->activity:Lcom/aee/sport/magicam/VideoPlayerActivity;

    const v1, 0x7f0c003e

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->layout_view_bottom:Landroid/view/View;

    .line 184
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->activity:Lcom/aee/sport/magicam/VideoPlayerActivity;

    const v1, 0x7f0c005c

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->layoutRecord:Landroid/view/View;

    .line 186
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->activity:Lcom/aee/sport/magicam/VideoPlayerActivity;

    const v1, 0x7f0c005f

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->playBack:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->activity:Lcom/aee/sport/magicam/VideoPlayerActivity;

    const v1, 0x7f0c0065

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menu:Landroid/widget/ImageView;

    .line 188
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->activity:Lcom/aee/sport/magicam/VideoPlayerActivity;

    const v1, 0x7f0c005e

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->operate:Landroid/widget/ImageView;

    .line 189
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->activity:Lcom/aee/sport/magicam/VideoPlayerActivity;

    const v1, 0x7f0c005d

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->recordOperateStop:Landroid/view/View;

    .line 192
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->activity:Lcom/aee/sport/magicam/VideoPlayerActivity;

    const v1, 0x7f0c0061

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolution:Landroid/widget/TextView;

    .line 193
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->activity:Lcom/aee/sport/magicam/VideoPlayerActivity;

    const v1, 0x7f0c0062

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->perspective:Landroid/widget/TextView;

    .line 194
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->activity:Lcom/aee/sport/magicam/VideoPlayerActivity;

    const v1, 0x7f0c0063

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->remainder:Landroid/widget/TextView;

    .line 195
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->activity:Lcom/aee/sport/magicam/VideoPlayerActivity;

    const v1, 0x7f0c0064

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->pics:Landroid/widget/TextView;

    .line 196
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->activity:Lcom/aee/sport/magicam/VideoPlayerActivity;

    const v1, 0x7f0c0083

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->videoTime:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolution:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->perspective:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->remainder:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->pics:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->activity:Lcom/aee/sport/magicam/VideoPlayerActivity;

    const v1, 0x7f0c0060

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->playSet:Landroid/view/View;

    .line 205
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->playBack:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menu:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->operate:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->recordOperateStop:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolution:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->playSet:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-direct {p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->iniMenuPopWindow()V

    .line 214
    return-void
.end method

.method private onClickContinuous(Z)V
    .locals 2
    .param p1, "isSend"    # Z

    .prologue
    const v1, 0x7f02001c

    .line 904
    const/4 v0, 0x1

    iput v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->selectPosition:I

    .line 905
    invoke-virtual {p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->refrshText()V

    .line 906
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->videoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 907
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->photoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 908
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->fastShotView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 909
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->continuousView:Landroid/view/View;

    const v1, 0x7f02001d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 910
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menu:Landroid/widget/ImageView;

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 912
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->layoutRecord:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 913
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->operate:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 914
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->operate:Landroid/widget/ImageView;

    const v1, 0x7f0200b1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 917
    return-void
.end method

.method private onClickFashShot(Z)V
    .locals 6
    .param p1, "isSend"    # Z

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f02001c

    .line 874
    if-eqz p1, :cond_0

    .line 875
    new-instance v1, Lcom/aee/sport/magicam/bean/SendMsg;

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AEE_CAMERA_PHOTO_MODE:I

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v3

    iget v3, v3, Lcom/aee/sport/magicam/AeeApplication;->token:I

    invoke-direct {v1, v2, v3, v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(III)V

    invoke-direct {p0, v1}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->setMode(Lcom/aee/sport/magicam/bean/SendMsg;)V

    .line 877
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->selectPosition:I

    .line 879
    :goto_0
    sget-boolean v1, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isOK:Z

    if-eqz v1, :cond_1

    .line 888
    invoke-virtual {p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->refrshText()V

    .line 889
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->videoView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 890
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->photoView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 891
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->fastShotView:Landroid/view/View;

    const v2, 0x7f02001d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 892
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->continuousView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 893
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menu:Landroid/widget/ImageView;

    const v2, 0x7f0200e1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 895
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->layoutRecord:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 896
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->operate:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 897
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->operate:Landroid/widget/ImageView;

    const v2, 0x7f0200b1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 898
    return-void

    .line 881
    :cond_1
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 882
    :catch_0
    move-exception v0

    .line 884
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private onClickPhoto(Z)V
    .locals 6
    .param p1, "isSend"    # Z

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f02001c

    .line 849
    if-eqz p1, :cond_0

    .line 850
    new-instance v1, Lcom/aee/sport/magicam/bean/SendMsg;

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AEE_CAMERA_PHOTO_MODE:I

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v3

    iget v3, v3, Lcom/aee/sport/magicam/AeeApplication;->token:I

    invoke-direct {v1, v2, v3, v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(III)V

    invoke-direct {p0, v1}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->setMode(Lcom/aee/sport/magicam/bean/SendMsg;)V

    .line 851
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->selectPosition:I

    .line 853
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :goto_0
    invoke-virtual {p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->refrshText()V

    .line 859
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->videoView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 860
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->photoView:Landroid/view/View;

    const v2, 0x7f02001d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 861
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->fastShotView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 862
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->continuousView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 863
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menu:Landroid/widget/ImageView;

    const v2, 0x7f0200e5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 865
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->layoutRecord:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 866
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->operate:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 867
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->operate:Landroid/widget/ImageView;

    const v2, 0x7f0200b1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 869
    return-void

    .line 854
    :catch_0
    move-exception v0

    .line 856
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private onClickVideo(Z)V
    .locals 5
    .param p1, "isSend"    # Z

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f02001c

    .line 831
    if-eqz p1, :cond_0

    .line 832
    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    sget v1, Lcom/aee/sport/magicam/utils/Constants;->AEE_CAMERA_RECODER_MODE:I

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget v2, v2, Lcom/aee/sport/magicam/AeeApplication;->token:I

    invoke-direct {v0, v1, v2, v4}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(III)V

    invoke-direct {p0, v0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->setMode(Lcom/aee/sport/magicam/bean/SendMsg;)V

    .line 833
    :cond_0
    iput v4, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->selectPosition:I

    .line 834
    invoke-virtual {p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->refrshText()V

    .line 835
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->videoView:Landroid/view/View;

    const v1, 0x7f02001d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 836
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->photoView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 837
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->fastShotView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 838
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->continuousView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 839
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menu:Landroid/widget/ImageView;

    const v1, 0x7f0200e9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 841
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->operate:Landroid/widget/ImageView;

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 843
    return-void
.end method

.method private record(Z)V
    .locals 7
    .param p1, "isRecord"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 337
    iput-boolean v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isBeginRecord:Z

    .line 338
    iput-boolean v3, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isFinish:Z

    .line 339
    if-eqz p1, :cond_0

    .line 340
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    new-instance v4, Lcom/aee/sport/magicam/utils/ViewBottomOperate$3;

    invoke-direct {v4, p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$3;-><init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)V

    .line 374
    sget v5, Lcom/aee/sport/magicam/utils/Constants;->AMBA_RECORD_START:I

    .line 340
    invoke-virtual {v1, v4, v5}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;I)V

    .line 413
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isFinish:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 420
    :goto_1
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isBeginRecord:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isRecord:Z

    .line 421
    iget-boolean v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isBeginRecord:Z

    if-eqz v1, :cond_4

    .line 422
    if-eqz p1, :cond_3

    .line 423
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->layoutRecord:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->operate:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 441
    :goto_3
    return-void

    .line 376
    :cond_0
    iput-boolean v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isFinish:Z

    .line 377
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    new-instance v4, Lcom/aee/sport/magicam/utils/ViewBottomOperate$4;

    invoke-direct {v4, p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$4;-><init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)V

    .line 410
    sget v5, Lcom/aee/sport/magicam/utils/Constants;->AMBA_RECORD_STOP:I

    .line 377
    invoke-virtual {v1, v4, v5}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;I)V

    goto :goto_0

    .line 414
    :cond_1
    const-wide/16 v4, 0x64

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    move v1, v3

    .line 420
    goto :goto_2

    .line 426
    :cond_3
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->layoutRecord:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 427
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->operate:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 429
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/aee/sport/magicam/utils/ViewBottomOperate$5;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$5;-><init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 435
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_3

    .line 438
    :cond_4
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    iput v2, v1, Lcom/aee/sport/magicam/AeeApplication;->appStatus:I

    .line 439
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menu:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_3
.end method

.method private selectResolutionAction(I)V
    .locals 5
    .param p1, "action"    # I

    .prologue
    .line 557
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionArray:[Ljava/lang/String;

    array-length v1, v2

    .line 558
    .local v1, "size":I
    iget v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionSelectionPotion:I

    add-int v0, v2, p1

    .line 559
    .local v0, "position":I
    add-int/lit8 v2, v1, -0x1

    if-le v0, v2, :cond_0

    .line 560
    const/4 v2, 0x0

    iput v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionSelectionPotion:I

    .line 569
    :goto_0
    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionArray:[Ljava/lang/String;

    iget v4, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionSelectionPotion:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    return-void

    .line 562
    :cond_0
    if-gez v0, :cond_1

    .line 563
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionSelectionPotion:I

    goto :goto_0

    .line 565
    :cond_1
    iput v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionSelectionPotion:I

    goto :goto_0
.end method

.method private sendMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 723
    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    sget v1, Lcom/aee/sport/magicam/utils/Constants;->AMBA_SET_SETTING:I

    invoke-direct {v0, v1, p1, p2}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 724
    .local v0, "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    new-instance v2, Lcom/aee/sport/magicam/utils/ViewBottomOperate$10;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$10;-><init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)V

    invoke-virtual {v1, v2, v0}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;Lcom/aee/sport/magicam/bean/SendMsg;)V

    .line 738
    return-void
.end method

.method private setMode(Lcom/aee/sport/magicam/bean/SendMsg;)V
    .locals 2
    .param p1, "msg"    # Lcom/aee/sport/magicam/bean/SendMsg;

    .prologue
    .line 762
    const/4 v0, 0x0

    sput-boolean v0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isOK:Z

    .line 763
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v0

    new-instance v1, Lcom/aee/sport/magicam/utils/ViewBottomOperate$11;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$11;-><init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)V

    invoke-virtual {v0, v1, p1}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;Lcom/aee/sport/magicam/bean/SendMsg;)V

    .line 825
    return-void
.end method

.method private takeContinuousStart()V
    .locals 3

    .prologue
    .line 539
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v0

    new-instance v1, Lcom/aee/sport/magicam/utils/ViewBottomOperate$9;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$9;-><init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)V

    .line 547
    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AEE_TAKE_LAPSEPHOTO:I

    .line 539
    invoke-virtual {v0, v1, v2}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;I)V

    .line 548
    return-void
.end method

.method private takeContinuousStop()V
    .locals 3

    .prologue
    .line 524
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v0

    new-instance v1, Lcom/aee/sport/magicam/utils/ViewBottomOperate$8;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$8;-><init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)V

    .line 532
    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AEE_STOP_LAPSEPHOTO:I

    .line 524
    invoke-virtual {v0, v1, v2}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;I)V

    .line 533
    return-void
.end method

.method private takeFastPhoto()V
    .locals 4

    .prologue
    .line 488
    :try_start_0
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    new-instance v2, Lcom/aee/sport/magicam/utils/ViewBottomOperate$7;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$7;-><init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)V

    .line 514
    sget v3, Lcom/aee/sport/magicam/utils/Constants;->AEE_TAKE_FASTPHOTO:I

    .line 488
    invoke-virtual {v1, v2, v3}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_0
    return-void

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private takePhoto()V
    .locals 4

    .prologue
    .line 448
    :try_start_0
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    new-instance v2, Lcom/aee/sport/magicam/utils/ViewBottomOperate$6;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$6;-><init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)V

    .line 475
    sget v3, Lcom/aee/sport/magicam/utils/Constants;->AMBA_TAKE_PHOTO:I

    .line 448
    invoke-virtual {v1, v2, v3}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :goto_0
    return-void

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isRecord()Z
    .locals 1

    .prologue
    .line 925
    iget-boolean v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isRecord:Z

    return v0
.end method

.method public menuPopWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 612
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menuWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 613
    invoke-direct {p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->iniMenuPopWindow()V

    .line 614
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menuWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menu:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menu:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->popWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menu:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->layout_view_bottom:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 615
    iget v4, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->popHeight:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    .line 614
    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 620
    :goto_0
    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menuWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menu:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menu:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->popWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menu:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->layout_view_bottom:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 618
    iget v4, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->popHeight:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    .line 617
    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x7f08001d

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 974
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 975
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1104
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 977
    :pswitch_1
    iget v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->selectPosition:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 979
    :pswitch_2
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Lcom/aee/sport/magicam/AeeApplication;->appStatus:I

    .line 980
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->operate:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 981
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menu:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 982
    invoke-direct {p0, v3}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->record(Z)V

    goto :goto_0

    .line 985
    :pswitch_3
    iget-boolean v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isContinuousSelect:Z

    if-eqz v1, :cond_2

    .line 986
    iget-boolean v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isContinuous:Z

    if-eqz v1, :cond_1

    .line 987
    iput-boolean v4, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isContinuous:Z

    .line 988
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->operate:Landroid/widget/ImageView;

    const v2, 0x7f0200b1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 989
    invoke-direct {p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->takeContinuousStop()V

    goto :goto_0

    .line 991
    :cond_1
    iput-boolean v3, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isContinuous:Z

    .line 992
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->operate:Landroid/widget/ImageView;

    const v2, 0x7f0200b4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 993
    invoke-direct {p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->takeContinuousStart()V

    goto :goto_0

    .line 997
    :cond_2
    iget-boolean v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isFastSelect:Z

    if-nez v1, :cond_3

    .line 998
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->operate:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 999
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menu:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1000
    invoke-direct {p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->takePhoto()V

    goto :goto_0

    .line 1003
    :cond_3
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->operate:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1004
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menu:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1005
    invoke-direct {p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->takeFastPhoto()V

    goto :goto_0

    .line 1013
    :pswitch_4
    iget-boolean v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isRecord:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isContinuous:Z

    if-nez v1, :cond_0

    .line 1014
    invoke-virtual {p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menuPopWindow()V

    goto :goto_0

    .line 1017
    :pswitch_5
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    iput v3, v1, Lcom/aee/sport/magicam/AeeApplication;->appStatus:I

    .line 1018
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->activity:Lcom/aee/sport/magicam/VideoPlayerActivity;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/aee/sport/magicam/VideoPlayerActivity;->vTime:J

    .line 1019
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->menu:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1020
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->recordOperateStop:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1021
    invoke-direct {p0, v4}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->record(Z)V

    goto/16 :goto_0

    .line 1030
    :pswitch_6
    iget-boolean v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isRecord:Z

    if-eqz v1, :cond_4

    .line 1031
    invoke-static {v2, v3}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto/16 :goto_0

    .line 1033
    :cond_4
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->activity:Lcom/aee/sport/magicam/VideoPlayerActivity;

    const-class v2, Lcom/aee/sport/magicam/setting/CameraSettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1034
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->activity:Lcom/aee/sport/magicam/VideoPlayerActivity;

    invoke-virtual {v1, v0}, Lcom/aee/sport/magicam/VideoPlayerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1038
    :pswitch_7
    iget-boolean v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isRecord:Z

    if-eqz v1, :cond_5

    .line 1039
    invoke-static {v2, v3}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto/16 :goto_0

    .line 1041
    :cond_5
    iget-object v1, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->playBack:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1042
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/aee/sport/magicam/utils/ViewBottomOperate$12;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/utils/ViewBottomOperate$12;-><init>(Lcom/aee/sport/magicam/utils/ViewBottomOperate;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1076
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 975
    :pswitch_data_0
    .packed-switch 0x7f0c005d
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 977
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public reFreshStatus()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 223
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v7

    iget-object v3, v7, Lcom/aee/sport/magicam/AeeApplication;->cameraSettingMap:Ljava/util/Map;

    .line 224
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    .line 230
    .local v0, "conMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;>;"
    const-string v7, "get_dv_fs"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "dvFS":[Ljava/lang/String;
    const-string v7, "video_resolution"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    iget-object v6, v7, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    .line 232
    .local v6, "videoResolution":Ljava/lang/String;
    const-string v7, "photo_size"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    iget-object v4, v7, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    .line 233
    .local v4, "photoSize":Ljava/lang/String;
    const-string v7, "video_fov"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    iget-object v5, v7, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    .line 234
    .local v5, "videoFov":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 236
    const-string v7, "get_dv_mode"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "VIDEO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 237
    iput v10, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->selectPosition:I

    .line 241
    :goto_0
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v7

    iget v7, v7, Lcom/aee/sport/magicam/AeeApplication;->appStatus:I

    if-ne v7, v12, :cond_4

    .line 242
    iput-boolean v10, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isContinuous:Z

    .line 246
    :goto_1
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v7

    iget v7, v7, Lcom/aee/sport/magicam/AeeApplication;->appStatus:I

    if-ne v7, v11, :cond_5

    .line 247
    iput-boolean v10, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isRecord:Z

    .line 250
    :goto_2
    const-string v7, "photo_cap_mode"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    iget-object v7, v7, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    const-string v8, "photo_cap_mode_fas"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 251
    iput-boolean v10, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isFastSelect:Z

    .line 255
    :cond_0
    :try_start_0
    iget v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->selectPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v7, :pswitch_data_0

    .line 293
    :cond_1
    :goto_3
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->perspective:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/aee/sport/magicam/utils/PublicUtils;->getVideoFov(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :cond_2
    return-void

    .line 239
    :cond_3
    iput v9, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->selectPosition:I

    goto :goto_0

    .line 244
    :cond_4
    iput-boolean v9, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isContinuous:Z

    goto :goto_1

    .line 249
    :cond_5
    iput-boolean v9, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isRecord:Z

    goto :goto_2

    .line 257
    :pswitch_0
    :try_start_1
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolution:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/aee/sport/magicam/utils/PublicUtils;->getPhotoSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->remainder:Landroid/widget/TextView;

    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->pics:Landroid/widget/TextView;

    const/4 v8, 0x4

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-boolean v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isClickMenu:Z

    if-nez v7, :cond_1

    .line 261
    iget-boolean v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isFastSelect:Z

    if-eqz v7, :cond_6

    .line 262
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->onClickFashShot(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 290
    :catch_0
    move-exception v2

    .line 291
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 264
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v7, 0x0

    :try_start_2
    invoke-direct {p0, v7}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->onClickPhoto(Z)V

    goto :goto_3

    .line 269
    :pswitch_1
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolution:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/aee/sport/magicam/utils/PublicUtils;->getVideoResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->remainder:Landroid/widget/TextView;

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-static {v8}, Lcom/aee/sport/magicam/utils/PublicUtils;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->pics:Landroid/widget/TextView;

    const/4 v8, 0x3

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-boolean v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isClickMenu:Z

    if-nez v7, :cond_1

    .line 273
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->onClickVideo(Z)V

    goto :goto_3

    .line 276
    :pswitch_2
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolution:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/aee/sport/magicam/utils/PublicUtils;->getVideoResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->remainder:Landroid/widget/TextView;

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-static {v8}, Lcom/aee/sport/magicam/utils/PublicUtils;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->pics:Landroid/widget/TextView;

    const/4 v8, 0x3

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-boolean v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isClickMenu:Z

    if-nez v7, :cond_1

    .line 280
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->onClickVideo(Z)V

    goto/16 :goto_3

    .line 283
    :pswitch_3
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolution:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/aee/sport/magicam/utils/PublicUtils;->getPhotoSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->remainder:Landroid/widget/TextView;

    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->pics:Landroid/widget/TextView;

    const/4 v8, 0x4

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-boolean v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->isClickMenu:Z

    if-nez v7, :cond_1

    .line 287
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->onClickPhoto(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public refrshText()V
    .locals 8

    .prologue
    .line 302
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v6

    iget-object v3, v6, Lcom/aee/sport/magicam/AeeApplication;->cameraSettingMap:Ljava/util/Map;

    .line 303
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    .line 304
    .local v1, "conMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;>;"
    const-string v6, "get_dv_fs"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "dvFS":[Ljava/lang/String;
    const-string v6, "video_resolution"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    iget-object v5, v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    .line 307
    .local v5, "videoResolution":Ljava/lang/String;
    const-string v4, ""

    .line 308
    .local v4, "photoSize":Ljava/lang/String;
    const-string v6, "photo_size"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 309
    const-string v6, "photo_size"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "photoSize":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 310
    .restart local v4    # "photoSize":Ljava/lang/String;
    const-string v6, "photo_size"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    .line 311
    .local v0, "ck":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    iput-object v4, v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    .line 312
    const-string v6, "photo_size"

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v6, "photo_size"

    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .end local v0    # "ck":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    :cond_0
    const-string v6, "photo_size"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    iget-object v4, v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    .line 318
    iget v6, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->selectPosition:I

    if-nez v6, :cond_1

    .line 319
    iget-object v6, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolution:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/aee/sport/magicam/utils/PublicUtils;->getVideoResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v6, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->remainder:Landroid/widget/TextView;

    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-static {v7}, Lcom/aee/sport/magicam/utils/PublicUtils;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v6, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->pics:Landroid/widget/TextView;

    const/4 v7, 0x3

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v6, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolution:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/aee/sport/magicam/utils/PublicUtils;->getPhotoSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v6, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->remainder:Landroid/widget/TextView;

    const/4 v7, 0x2

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v6, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->pics:Landroid/widget/TextView;

    const/4 v7, 0x4

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public resolutionPopWindow()V
    .locals 13

    .prologue
    .line 628
    :try_start_0
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->activity:Lcom/aee/sport/magicam/VideoPlayerActivity;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Lcom/aee/sport/magicam/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 629
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f030024

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 630
    .local v2, "layout":Landroid/view/View;
    const v7, 0x7f0c007c

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->leftView:Landroid/view/View;

    .line 631
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->leftView:Landroid/view/View;

    iget-object v8, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionOnclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    const v7, 0x7f0c007e

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->rightView:Landroid/view/View;

    .line 633
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->rightView:Landroid/view/View;

    iget-object v8, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionOnclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v7

    iget-object v3, v7, Lcom/aee/sport/magicam/AeeApplication;->cameraSettingMap:Ljava/util/Map;

    .line 637
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "video_resolution"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 638
    .local v6, "videoResolution":Ljava/lang/String;
    const-string v7, "photo_size"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 639
    .local v4, "photoSize":Ljava/lang/String;
    const-string v5, ""

    .line 640
    .local v5, "value":Ljava/lang/String;
    iget v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->selectPosition:I

    packed-switch v7, :pswitch_data_0

    .line 661
    :goto_0
    const v7, 0x7f0c007d

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionTextView:Landroid/widget/TextView;

    .line 662
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionOnclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionArray:[Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/aee/sport/magicam/utils/PublicUtils;->getIndexFromArray(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionSelectionPotion:I

    .line 664
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionArray:[Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionArray:[Ljava/lang/String;

    array-length v7, v7

    if-lez v7, :cond_0

    iget v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionSelectionPotion:I

    iget-object v8, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionArray:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_0

    .line 665
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionArray:[Ljava/lang/String;

    iget v9, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionSelectionPotion:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    :cond_0
    new-instance v7, Landroid/widget/PopupWindow;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v2, v8, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionPopWindow:Landroid/widget/PopupWindow;

    .line 668
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionPopWindow:Landroid/widget/PopupWindow;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 669
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionPopWindow:Landroid/widget/PopupWindow;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 670
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->update()V

    .line 671
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionPopWindow:Landroid/widget/PopupWindow;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 672
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionPopWindow:Landroid/widget/PopupWindow;

    const v8, 0x7f070014

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 673
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/View;->measure(II)V

    .line 674
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iput v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionPopWidth:I

    .line 675
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iput v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionPopHeight:I

    .line 676
    iget-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionPopWindow:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolution:Landroid/widget/TextView;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolution:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLeft()I

    move-result v10

    iget-object v11, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->layout_view_bottom:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    .line 677
    iget v12, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionPopHeight:I

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x5

    .line 676
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 681
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "layout":Landroid/view/View;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "photoSize":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "videoResolution":Ljava/lang/String;
    :goto_1
    return-void

    .line 642
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    .restart local v2    # "layout":Landroid/view/View;
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "photoSize":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    .restart local v6    # "videoResolution":Ljava/lang/String;
    :pswitch_0
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v7

    iget-object v7, v7, Lcom/aee/sport/magicam/AeeApplication;->listMap:Ljava/util/Map;

    const-string v8, "photo_size"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    iput-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionArray:[Ljava/lang/String;

    .line 643
    move-object v5, v4

    .line 644
    goto/16 :goto_0

    .line 646
    :pswitch_1
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v7

    iget-object v7, v7, Lcom/aee/sport/magicam/AeeApplication;->listMap:Ljava/util/Map;

    const-string v8, "video_resolution"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    iput-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionArray:[Ljava/lang/String;

    .line 647
    move-object v5, v6

    .line 648
    goto/16 :goto_0

    .line 650
    :pswitch_2
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v7

    iget-object v7, v7, Lcom/aee/sport/magicam/AeeApplication;->listMap:Ljava/util/Map;

    const-string v8, "video_resolution"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    iput-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionArray:[Ljava/lang/String;

    .line 651
    move-object v5, v6

    .line 652
    goto/16 :goto_0

    .line 654
    :pswitch_3
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v7

    iget-object v7, v7, Lcom/aee/sport/magicam/AeeApplication;->listMap:Ljava/util/Map;

    const-string v8, "photo_size"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    iput-object v7, p0, Lcom/aee/sport/magicam/utils/ViewBottomOperate;->resolutionArray:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    move-object v5, v4

    goto/16 :goto_0

    .line 678
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "layout":Landroid/view/View;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "photoSize":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "videoResolution":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 640
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
