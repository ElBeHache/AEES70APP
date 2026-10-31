.class public Lcom/aee/sport/magicam/photoview/PhotoView;
.super Landroid/widget/ImageView;
.source "PhotoView.java"

# interfaces
.implements Lcom/aee/sport/magicam/photoview/IPhotoView;


# instance fields
.field private final mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

.field private mPendingScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aee/sport/magicam/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/aee/sport/magicam/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 32
    new-instance v0, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-direct {v0, p0}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    .line 34
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public canZoom()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->canZoom()Z

    move-result v0

    return v0
.end method

.method public clearZoom()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 170
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/aee/sport/magicam/photoview/PhotoView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/aee/sport/magicam/photoview/PhotoView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->zoomTo(FFF)V

    .line 173
    :cond_0
    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->getMaxScale()F

    move-result v0

    return v0
.end method

.method public getMidScale()F
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->getMidScale()F

    move-result v0

    return v0
.end method

.method public getMinScale()F
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->getMinScale()F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->cleanup()V

    .line 166
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 167
    return-void
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 77
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->setAllowParentInterceptOnEdge(Z)V

    .line 78
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v1, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    if-eqz v1, :cond_0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->update()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->update()V

    .line 114
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 119
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->update()V

    .line 122
    :cond_0
    return-void
.end method

.method public setMaxScale(F)V
    .locals 1
    .param p1, "maxScale"    # F

    .prologue
    .line 92
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->setMaxScale(F)V

    .line 93
    return-void
.end method

.method public setMidScale(F)V
    .locals 1
    .param p1, "midScale"    # F

    .prologue
    .line 87
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->setMidScale(F)V

    .line 88
    return-void
.end method

.method public setMinScale(F)V
    .locals 1
    .param p1, "minScale"    # F

    .prologue
    .line 82
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->setMinScale(F)V

    .line 83
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 132
    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/aee/sport/magicam/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/aee/sport/magicam/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->setOnMatrixChangeListener(Lcom/aee/sport/magicam/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    .line 127
    return-void
.end method

.method public setOnPhotoTapListener(Lcom/aee/sport/magicam/photoview/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/aee/sport/magicam/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->setOnPhotoTapListener(Lcom/aee/sport/magicam/photoview/PhotoViewAttacher$OnPhotoTapListener;)V

    .line 137
    return-void
.end method

.method public setOnViewTapListener(Lcom/aee/sport/magicam/photoview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/aee/sport/magicam/photoview/PhotoViewAttacher$OnViewTapListener;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->setOnViewTapListener(Lcom/aee/sport/magicam/photoview/PhotoViewAttacher$OnViewTapListener;)V

    .line 142
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iput-object p1, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    goto :goto_0
.end method

.method public setZoomable(Z)V
    .locals 1
    .param p1, "zoomable"    # Z

    .prologue
    .line 155
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->setZoomable(Z)V

    .line 156
    return-void
.end method

.method public zoomTo(FFF)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "focalX"    # F
    .param p3, "focalY"    # F

    .prologue
    .line 160
    iget-object v0, p0, Lcom/aee/sport/magicam/photoview/PhotoView;->mAttacher:Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aee/sport/magicam/photoview/PhotoViewAttacher;->zoomTo(FFF)V

    .line 161
    return-void
.end method
