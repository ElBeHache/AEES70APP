.class public Lcom/aee/sport/magicam/GuideActivity;
.super Landroid/app/Activity;
.source "GuideActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private currentIndex:I

.field private dots:[Landroid/widget/ImageView;

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private vp:Landroid/support/v4/view/ViewPager;

.field private vpAdapter:Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initDots()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 66
    const v2, 0x7f0c0015

    invoke-virtual {p0, v2}, Lcom/aee/sport/magicam/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 68
    .local v1, "ll":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/aee/sport/magicam/GuideActivity;->views:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/aee/sport/magicam/GuideActivity;->dots:[Landroid/widget/ImageView;

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/aee/sport/magicam/GuideActivity;->views:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 76
    iput v4, p0, Lcom/aee/sport/magicam/GuideActivity;->currentIndex:I

    .line 77
    iget-object v2, p0, Lcom/aee/sport/magicam/GuideActivity;->dots:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/aee/sport/magicam/GuideActivity;->currentIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 79
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    return-void

    .line 72
    :cond_0
    iget-object v3, p0, Lcom/aee/sport/magicam/GuideActivity;->dots:[Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v0

    .line 73
    iget-object v2, p0, Lcom/aee/sport/magicam/GuideActivity;->dots:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/aee/sport/magicam/GuideActivity;->views:Ljava/util/List;

    .line 52
    iget-object v1, p0, Lcom/aee/sport/magicam/GuideActivity;->views:Ljava/util/List;

    const v2, 0x7f030014

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v1, p0, Lcom/aee/sport/magicam/GuideActivity;->views:Ljava/util/List;

    const v2, 0x7f030015

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v1, p0, Lcom/aee/sport/magicam/GuideActivity;->views:Ljava/util/List;

    const v2, 0x7f030016

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v1, Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;

    iget-object v2, p0, Lcom/aee/sport/magicam/GuideActivity;->views:Ljava/util/List;

    invoke-direct {v1, v2, p0}, Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;-><init>(Ljava/util/List;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/aee/sport/magicam/GuideActivity;->vpAdapter:Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;

    .line 59
    const v1, 0x7f0c0014

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/aee/sport/magicam/GuideActivity;->vp:Landroid/support/v4/view/ViewPager;

    .line 60
    iget-object v1, p0, Lcom/aee/sport/magicam/GuideActivity;->vp:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/aee/sport/magicam/GuideActivity;->vpAdapter:Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 62
    iget-object v1, p0, Lcom/aee/sport/magicam/GuideActivity;->vp:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 63
    return-void
.end method

.method private setCurrentDot(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 83
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/aee/sport/magicam/GuideActivity;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 84
    iget v0, p0, Lcom/aee/sport/magicam/GuideActivity;->currentIndex:I

    if-ne v0, p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/aee/sport/magicam/GuideActivity;->dots:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/aee/sport/magicam/GuideActivity;->dots:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/aee/sport/magicam/GuideActivity;->currentIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 91
    iput p1, p0, Lcom/aee/sport/magicam/GuideActivity;->currentIndex:I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/GuideActivity;->setContentView(I)V

    .line 41
    invoke-direct {p0}, Lcom/aee/sport/magicam/GuideActivity;->initViews()V

    .line 44
    invoke-direct {p0}, Lcom/aee/sport/magicam/GuideActivity;->initDots()V

    .line 45
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 97
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 102
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/GuideActivity;->setCurrentDot(I)V

    .line 109
    return-void
.end method
