.class public Lcom/aee/sport/magicam/widget/CircleProgressBar;
.super Landroid/view/View;
.source "CircleProgressBar.java"


# instance fields
.field private maxProgress:I

.field oval:Landroid/graphics/RectF;

.field paint:Landroid/graphics/Paint;

.field private progress:I

.field private progressStrokeWidth:I

.field private showInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/16 v0, 0x64

    iput v0, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->maxProgress:I

    .line 14
    const/16 v0, 0x1e

    iput v0, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->progress:I

    .line 15
    const/4 v0, 0x4

    iput v0, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->progressStrokeWidth:I

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->oval:Landroid/graphics/RectF;

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    .line 26
    return-void
.end method


# virtual methods
.method public getMaxProgress()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->maxProgress:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    .line 31
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 32
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/CircleProgressBar;->getWidth()I

    move-result v11

    .line 33
    .local v11, "width":I
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/CircleProgressBar;->getHeight()I

    move-result v6

    .line 35
    .local v6, "height":I
    if-eq v11, v6, :cond_0

    .line 36
    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 37
    .local v7, "min":I
    move v11, v7

    .line 38
    move v6, v7

    .line 41
    .end local v7    # "min":I
    :cond_0
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 44
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->progressStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->oval:Landroid/graphics/RectF;

    iget v1, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->progressStrokeWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 48
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->oval:Landroid/graphics/RectF;

    iget v1, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->progressStrokeWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 49
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->oval:Landroid/graphics/RectF;

    iget v1, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->progressStrokeWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v11, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 50
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->oval:Landroid/graphics/RectF;

    iget v1, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->progressStrokeWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v6, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 52
    iget-object v1, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->oval:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 53
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x57

    const/16 v5, 0x87

    const/16 v12, 0xb6

    invoke-static {v1, v5, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v1, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->oval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->progress:I

    int-to-float v0, v0

    iget v5, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->maxProgress:I

    int-to-float v5, v5

    div-float/2addr v0, v5

    mul-float/2addr v3, v0

    iget-object v5, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 56
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget v0, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->progress:I

    if-ltz v0, :cond_1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->progress:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, "text":Ljava/lang/String;
    :goto_0
    div-int/lit8 v9, v6, 0x4

    .line 63
    .local v9, "textHeight":I
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    int-to-float v1, v9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 64
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v8, v4, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    float-to-int v10, v0

    .line 65
    .local v10, "textWidth":I
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    div-int/lit8 v0, v11, 0x2

    div-int/lit8 v1, v10, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-int/lit8 v1, v6, 0x2

    div-int/lit8 v2, v9, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 68
    return-void

    .line 61
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "textHeight":I
    .end local v10    # "textWidth":I
    :cond_1
    iget-object v8, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->showInfo:Ljava/lang/String;

    .restart local v8    # "text":Ljava/lang/String;
    goto :goto_0
.end method

.method public setMaxProgress(I)V
    .locals 0
    .param p1, "maxProgress"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->maxProgress:I

    .line 76
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->progress:I

    .line 80
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/CircleProgressBar;->invalidate()V

    .line 81
    return-void
.end method

.method public setProgressNotInUiThread(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->progress:I

    .line 88
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/CircleProgressBar;->postInvalidate()V

    .line 89
    return-void
.end method

.method public setShowInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "showInfo"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->showInfo:Ljava/lang/String;

    .line 98
    const/16 v0, -0x64

    iput v0, p0, Lcom/aee/sport/magicam/widget/CircleProgressBar;->progress:I

    .line 99
    invoke-virtual {p0}, Lcom/aee/sport/magicam/widget/CircleProgressBar;->postInvalidate()V

    .line 100
    return-void
.end method
