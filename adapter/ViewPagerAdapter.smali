.class public Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ViewPagerAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

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


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/app/Activity;)V
    .locals 0
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;->views:Ljava/util/List;

    .line 33
    iput-object p2, p0, Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;->activity:Landroid/app/Activity;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;->setGuided()V

    return-void
.end method

.method static synthetic access$1(Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;->goHome()V

    return-void
.end method

.method private goHome()V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;->activity:Landroid/app/Activity;

    const-class v2, Lcom/aee/sport/magicam/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 80
    iget-object v1, p0, Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 81
    return-void
.end method

.method private setGuided()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    const-string v0, "guide_activity"

    invoke-static {v0, v1}, Lcom/aee/sport/magicam/utils/MySharedPreferences;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    const-string v0, "welcome_page"

    invoke-static {v0, v1}, Lcom/aee/sport/magicam/utils/MySharedPreferences;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "arg0":Landroid/view/View;
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 40
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 44
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;->views:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I

    .prologue
    .line 58
    move-object v1, p1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 59
    iget-object v1, p0, Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_0

    .line 60
    const v1, 0x7f0c004d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 61
    .local v0, "enjoyItBtn":Landroid/widget/Button;
    new-instance v1, Lcom/aee/sport/magicam/adapter/ViewPagerAdapter$1;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/adapter/ViewPagerAdapter$1;-><init>(Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .end local v0    # "enjoyItBtn":Landroid/widget/Button;
    :cond_0
    iget-object v1, p0, Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 95
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Parcelable;
    .param p2, "arg1"    # Ljava/lang/ClassLoader;

    .prologue
    .line 100
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 109
    return-void
.end method
