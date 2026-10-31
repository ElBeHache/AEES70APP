.class public Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;
.super Landroid/widget/SeekBar;
.source "MyVerticalSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aee/sport/magicam/widget/MyVerticalSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mOnSeekBarChangeListener:Lcom/aee/sport/magicam/widget/MyVerticalSeekBar$OnSeekBarChangeListener;

.field private mThumb:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 171
    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "gap"    # I

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, p1

    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getPaddingRight()I

    move-result v8

    sub-int v0, v7, v8

    .line 70
    .local v0, "available":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 71
    .local v5, "thumbWidth":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 72
    .local v3, "thumbHeight":I
    sub-int/2addr v0, v5

    .line 74
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getThumbOffset()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    .line 75
    int-to-float v7, v0

    mul-float/2addr v7, p3

    float-to-int v4, v7

    .line 77
    .local v4, "thumbPos":I
    const/high16 v7, -0x80000000

    if-ne p4, v7, :cond_0

    .line 78
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 79
    .local v2, "oldBounds":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 80
    .local v6, "topBound":I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 85
    .end local v2    # "oldBounds":Landroid/graphics/Rect;
    .local v1, "bottomBound":I
    :goto_0
    add-int v7, v4, v5

    invoke-virtual {p2, v4, v6, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    return-void

    .line 82
    .end local v1    # "bottomBound":I
    .end local v6    # "topBound":I
    :cond_0
    move v6, p4

    .line 83
    .restart local v6    # "topBound":I
    add-int v1, p4, v3

    .restart local v1    # "bottomBound":I
    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getHeight()I

    move-result v0

    .line 149
    .local v0, "Height":I
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getPaddingBottom()I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getPaddingTop()I

    move-result v7

    sub-int v2, v6, v7

    .line 150
    .local v2, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v1, v6

    .line 152
    .local v1, "Y":I
    const/4 v4, 0x0

    .line 153
    .local v4, "progress":F
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getPaddingBottom()I

    move-result v6

    sub-int v6, v0, v6

    if-le v1, v6, :cond_0

    .line 154
    const/4 v5, 0x0

    .line 161
    .local v5, "scale":F
    :goto_0
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getMax()I

    move-result v3

    .line 162
    .local v3, "max":I
    int-to-float v6, v3

    mul-float v4, v5, v6

    .line 164
    float-to-int v6, v4

    invoke-virtual {p0, v6}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->setProgress(I)V

    .line 165
    return-void

    .line 155
    .end local v3    # "max":I
    .end local v5    # "scale":F
    :cond_0
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getPaddingTop()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 156
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "scale":F
    goto :goto_0

    .line 158
    .end local v5    # "scale":F
    :cond_1
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getPaddingBottom()I

    move-result v6

    sub-int v6, v0, v6

    sub-int/2addr v6, v1

    int-to-float v6, v6

    int-to-float v7, v2

    div-float v5, v6, v7

    .restart local v5    # "scale":F
    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 90
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 91
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 92
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 93
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 98
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onProgressRefresh(FZ)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 59
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getHeight()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 61
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->invalidate()V

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->mOnSeekBarChangeListener:Lcom/aee/sport/magicam/widget/MyVerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->mOnSeekBarChangeListener:Lcom/aee/sport/magicam/widget/MyVerticalSeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getProgress()I

    move-result v2

    invoke-interface {v1, p0, v2, p2}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;IZ)V

    .line 66
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 109
    invoke-super {p0, p2, p1, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 110
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->mOnSeekBarChangeListener:Lcom/aee/sport/magicam/widget/MyVerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->mOnSeekBarChangeListener:Lcom/aee/sport/magicam/widget/MyVerticalSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;)V

    .line 49
    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->mOnSeekBarChangeListener:Lcom/aee/sport/magicam/widget/MyVerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->mOnSeekBarChangeListener:Lcom/aee/sport/magicam/widget/MyVerticalSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    :goto_0
    return v0

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 144
    goto :goto_0

    .line 119
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->setPressed(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->onStartTrackingTouch()V

    .line 121
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 122
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->onSizeChanged(IIII)V

    goto :goto_1

    .line 126
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 127
    invoke-direct {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->attemptClaimDrag()V

    .line 128
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->onSizeChanged(IIII)V

    goto :goto_1

    .line 132
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 133
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->onStopTrackingTouch()V

    .line 134
    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->setPressed(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->onSizeChanged(IIII)V

    goto :goto_1

    .line 139
    :pswitch_3
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->onStopTrackingTouch()V

    .line 140
    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->setPressed(Z)V

    .line 141
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v0}, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->onSizeChanged(IIII)V

    goto :goto_1

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setOnSeekBarChangeListener(Lcom/aee/sport/magicam/widget/MyVerticalSeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aee/sport/magicam/widget/MyVerticalSeekBar$OnSeekBarChangeListener;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->mOnSeekBarChangeListener:Lcom/aee/sport/magicam/widget/MyVerticalSeekBar$OnSeekBarChangeListener;

    .line 43
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/aee/sport/magicam/widget/MyVerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 104
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 105
    return-void
.end method
