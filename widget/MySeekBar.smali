.class public Lcom/aee/sport/magicam/widget/MySeekBar;
.super Landroid/widget/SeekBar;
.source "MySeekBar.java"


# instance fields
.field mThumb:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public getSeekBarThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/MySeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 29
    iput-object p1, p0, Lcom/aee/sport/magicam/widget/MySeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 30
    return-void
.end method
