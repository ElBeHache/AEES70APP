.class public Lcom/aee/sport/magicam/widget/MutipleTouchViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "MutipleTouchViewPager.java"


# instance fields
.field private mIsDisallowIntercept:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aee/sport/magicam/widget/MutipleTouchViewPager;->mIsDisallowIntercept:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aee/sport/magicam/widget/MutipleTouchViewPager;->mIsDisallowIntercept:Z

    .line 22
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/aee/sport/magicam/widget/MutipleTouchViewPager;->mIsDisallowIntercept:Z

    if-eqz v1, :cond_0

    .line 37
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/widget/MutipleTouchViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 39
    .local v0, "handled":Z
    invoke-virtual {p0, v2}, Lcom/aee/sport/magicam/widget/MutipleTouchViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 42
    .end local v0    # "handled":Z
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/aee/sport/magicam/widget/MutipleTouchViewPager;->mIsDisallowIntercept:Z

    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 30
    return-void
.end method
