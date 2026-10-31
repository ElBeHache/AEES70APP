.class public Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;
.super Lcom/aee/sport/magicam/BaseActivity;
.source "AltitudeRestrictionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity$CommonClickListener;
    }
.end annotation


# instance fields
.field private spinner:Landroid/widget/Spinner;

.field private tableView:Lbr/com/dina/ui/widget/UITableView;

.field private view:Lbr/com/dina/ui/model/ViewItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/aee/sport/magicam/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;->spinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method private createList()V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;->getView(Ljava/lang/String;)Lbr/com/dina/ui/model/ViewItem;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;->view:Lbr/com/dina/ui/model/ViewItem;

    .line 56
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;->tableView:Lbr/com/dina/ui/widget/UITableView;

    iget-object v1, p0, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;->view:Lbr/com/dina/ui/model/ViewItem;

    invoke-virtual {v0, v1}, Lbr/com/dina/ui/widget/UITableView;->addViewItem(Lbr/com/dina/ui/model/ViewItem;)V

    .line 58
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;->view:Lbr/com/dina/ui/model/ViewItem;

    invoke-virtual {v0}, Lbr/com/dina/ui/model/ViewItem;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;->spinner:Landroid/widget/Spinner;

    .line 60
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;->spinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity$1;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity$1;-><init>(Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 74
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;->spinner:Landroid/widget/Spinner;

    const-string v1, "altitude_restrictions"

    invoke-static {v1}, Lcom/aee/sport/magicam/utils/MySharedPreferences;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 76
    return-void
.end method

.method private getView(Ljava/lang/String;)Lbr/com/dina/ui/model/ViewItem;
    .locals 6
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 84
    .local v0, "mInflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 86
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f03002c

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 88
    const v4, 0x7f0c0046

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 89
    .local v1, "titleview":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_0
    new-instance v3, Lbr/com/dina/ui/model/ViewItem;

    invoke-direct {v3, v2}, Lbr/com/dina/ui/model/ViewItem;-><init>(Landroid/view/View;)V

    .line 93
    .local v3, "viewItem":Lbr/com/dina/ui/model/ViewItem;
    return-object v3
.end method

.method private init()V
    .locals 3

    .prologue
    .line 45
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;->setTitleText(I)V

    .line 46
    const v0, 0x7f0c0035

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/dina/ui/widget/UITableView;

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;->tableView:Lbr/com/dina/ui/widget/UITableView;

    .line 47
    invoke-direct {p0}, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;->createList()V

    .line 48
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;->tableView:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {v0}, Lbr/com/dina/ui/widget/UITableView;->commit()V

    .line 49
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;->tableView:Lbr/com/dina/ui/widget/UITableView;

    new-instance v1, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity$CommonClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity$CommonClickListener;-><init>(Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity$CommonClickListener;)V

    invoke-virtual {v0, v1}, Lbr/com/dina/ui/widget/UITableView;->setClickListener(Lbr/com/dina/ui/widget/UITableView$ClickListener;)V

    .line 51
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onClick(Landroid/view/View;)V

    .line 114
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;->init()V

    .line 41
    return-void
.end method
