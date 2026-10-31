.class public Lcom/aee/sport/magicam/widget/SlipButton;
.super Landroid/view/View;
.source "SlipButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aee/sport/magicam/widget/SlipButton$OnChangedListener;
    }
.end annotation


# instance fields
.field private Btn_Off:Landroid/graphics/Rect;

.field private Btn_On:Landroid/graphics/Rect;

.field private ChgLsn:Lcom/aee/sport/magicam/widget/SlipButton$OnChangedListener;

.field private DownX:F

.field private NowChoose:Z

.field private NowX:F

.field private OnSlip:Z

.field private bg_off:Landroid/graphics/Bitmap;

.field private bg_on:Landroid/graphics/Bitmap;

.field private isChgLsnOn:Z

.field private slip_btn:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    iput-boolean v0, p0, Lcom/aee/sport/magicam/widget/SlipButton;->NowChoose:Z

    .line 24
    iput-boolean v0, p0, Lcom/aee/sport/magicam/widget/SlipButton;->OnSlip:Z

    .line 27
    iput-boolean v0, p0, Lcom/aee/sport/magicam/widget/SlipButton;->isChgLsnOn:Z

    .line 34
    invoke-direct {p0}, Lcom/aee/sport/magicam/widget/SlipButton;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-boolean v0, p0, Lcom/aee/sport/magicam/widget/SlipButton;->NowChoose:Z

    .line 24
    iput-boolean v0, p0, Lcom/aee/sport/magicam/widget/SlipButton;->OnSlip:Z

    .line 27
    iput-boolean v0, p0, Lcom/aee/sport/magicam/widget/SlipButton;->isChgLsnOn:Z

    .line 50
    invoke-direct {p0}, Lcom/aee/sport/magicam/widget/SlipButton;->init()V

    .line 51
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/SlipButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    const v1, 0x7f0200d6

    .line 55
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/widget/SlipButton;->bg_on:Landroid/graphics/Bitmap;

    .line 57
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/SlipButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    const v1, 0x7f0200d5

    .line 57
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/widget/SlipButton;->bg_off:Landroid/graphics/Bitmap;

    .line 59
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/SlipButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    const v1, 0x7f0200db

    .line 59
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/widget/SlipButton;->slip_btn:Landroid/graphics/Bitmap;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/aee/sport/magicam/widget/SlipButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/aee/sport/magicam/widget/SlipButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/aee/sport/magicam/widget/SlipButton;->Btn_On:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/aee/sport/magicam/widget/SlipButton;->bg_off:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/aee/sport/magicam/widget/SlipButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 64
    iget-object v2, p0, Lcom/aee/sport/magicam/widget/SlipButton;->bg_off:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/aee/sport/magicam/widget/SlipButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 63
    iput-object v0, p0, Lcom/aee/sport/magicam/widget/SlipButton;->Btn_Off:Landroid/graphics/Rect;

    .line 65
    invoke-virtual {p0, p0}, Lcom/aee/sport/magicam/widget/SlipButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 66
    return-void
.end method


# virtual methods
.method public SetOnChangedListener(Lcom/aee/sport/magicam/widget/SlipButton$OnChangedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/aee/sport/magicam/widget/SlipButton$OnChangedListener;

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aee/sport/magicam/widget/SlipButton;->isChgLsnOn:Z

    .line 139
    iput-object p1, p0, Lcom/aee/sport/magicam/widget/SlipButton;->ChgLsn:Lcom/aee/sport/magicam/widget/SlipButton$OnChangedListener;

    .line 140
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/aee/sport/magicam/widget/SlipButton;->NowChoose:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 72
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 73
    .local v0, "matrix":Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 76
    .local v1, "paint":Landroid/graphics/Paint;
    iget v3, p0, Lcom/aee/sport/magicam/widget/SlipButton;->NowX:F

    iget-object v4, p0, Lcom/aee/sport/magicam/widget/SlipButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iget-boolean v3, p0, Lcom/aee/sport/magicam/widget/SlipButton;->NowChoose:Z

    if-nez v3, :cond_1

    .line 78
    iget-object v3, p0, Lcom/aee/sport/magicam/widget/SlipButton;->bg_off:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 84
    :goto_0
    iget-boolean v3, p0, Lcom/aee/sport/magicam/widget/SlipButton;->OnSlip:Z

    if-eqz v3, :cond_3

    .line 86
    iget v3, p0, Lcom/aee/sport/magicam/widget/SlipButton;->NowX:F

    iget-object v4, p0, Lcom/aee/sport/magicam/widget/SlipButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 87
    iget-object v3, p0, Lcom/aee/sport/magicam/widget/SlipButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/aee/sport/magicam/widget/SlipButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v2, v3

    .line 96
    .local v2, "x":F
    :goto_1
    cmpg-float v3, v2, v5

    if-gez v3, :cond_5

    .line 97
    const/4 v2, 0x0

    .line 100
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/aee/sport/magicam/widget/SlipButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v2, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 102
    return-void

    .line 81
    .end local v2    # "x":F
    :cond_1
    iget-object v3, p0, Lcom/aee/sport/magicam/widget/SlipButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 89
    :cond_2
    iget v3, p0, Lcom/aee/sport/magicam/widget/SlipButton;->NowX:F

    iget-object v4, p0, Lcom/aee/sport/magicam/widget/SlipButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v2, v3, v4

    .restart local v2    # "x":F
    goto :goto_1

    .line 91
    .end local v2    # "x":F
    :cond_3
    iget-boolean v3, p0, Lcom/aee/sport/magicam/widget/SlipButton;->NowChoose:Z

    if-eqz v3, :cond_4

    .line 92
    iget-object v3, p0, Lcom/aee/sport/magicam/widget/SlipButton;->Btn_Off:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v3

    .restart local v2    # "x":F
    goto :goto_1

    .line 94
    .end local v2    # "x":F
    :cond_4
    iget-object v3, p0, Lcom/aee/sport/magicam/widget/SlipButton;->Btn_On:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v3

    .restart local v2    # "x":F
    goto :goto_1

    .line 98
    :cond_5
    iget-object v3, p0, Lcom/aee/sport/magicam/widget/SlipButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/aee/sport/magicam/widget/SlipButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/aee/sport/magicam/widget/SlipButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/aee/sport/magicam/widget/SlipButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v2, v3

    goto :goto_2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 133
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/SlipButton;->invalidate()V

    move v1, v2

    .line 134
    :cond_1
    return v1

    .line 110
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/aee/sport/magicam/widget/SlipButton;->NowX:F

    goto :goto_0

    .line 113
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/aee/sport/magicam/widget/SlipButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 114
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/aee/sport/magicam/widget/SlipButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 116
    iput-boolean v2, p0, Lcom/aee/sport/magicam/widget/SlipButton;->OnSlip:Z

    .line 117
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/aee/sport/magicam/widget/SlipButton;->DownX:F

    .line 118
    iget v1, p0, Lcom/aee/sport/magicam/widget/SlipButton;->DownX:F

    iput v1, p0, Lcom/aee/sport/magicam/widget/SlipButton;->NowX:F

    goto :goto_0

    .line 121
    :pswitch_2
    iput-boolean v1, p0, Lcom/aee/sport/magicam/widget/SlipButton;->OnSlip:Z

    .line 122
    iget-boolean v0, p0, Lcom/aee/sport/magicam/widget/SlipButton;->NowChoose:Z

    .line 123
    .local v0, "LastChoose":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/aee/sport/magicam/widget/SlipButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 124
    iput-boolean v2, p0, Lcom/aee/sport/magicam/widget/SlipButton;->NowChoose:Z

    .line 127
    :goto_1
    iget-boolean v1, p0, Lcom/aee/sport/magicam/widget/SlipButton;->isChgLsnOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/aee/sport/magicam/widget/SlipButton;->NowChoose:Z

    if-eq v0, v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/aee/sport/magicam/widget/SlipButton;->ChgLsn:Lcom/aee/sport/magicam/widget/SlipButton$OnChangedListener;

    iget-boolean v3, p0, Lcom/aee/sport/magicam/widget/SlipButton;->NowChoose:Z

    invoke-interface {v1, v3}, Lcom/aee/sport/magicam/widget/SlipButton$OnChangedListener;->OnChanged(Z)V

    goto :goto_0

    .line 126
    :cond_2
    iput-boolean v1, p0, Lcom/aee/sport/magicam/widget/SlipButton;->NowChoose:Z

    goto :goto_1

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/aee/sport/magicam/widget/SlipButton;->NowChoose:Z

    .line 43
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/SlipButton;->invalidate()V

    .line 44
    return-void
.end method
