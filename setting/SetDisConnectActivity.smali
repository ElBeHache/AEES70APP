.class public Lcom/aee/sport/magicam/setting/SetDisConnectActivity;
.super Lcom/aee/sport/magicam/BaseActivity;
.source "SetDisConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aee/sport/magicam/setting/SetDisConnectActivity$CameraClickListener;,
        Lcom/aee/sport/magicam/setting/SetDisConnectActivity$CommonClickListener;
    }
.end annotation


# instance fields
.field private tableVieStatus:Lbr/com/dina/ui/widget/UITableView;

.field private tableViewStopRecord:Lbr/com/dina/ui/widget/UITableView;

.field private view:[Lbr/com/dina/ui/model/ViewItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/aee/sport/magicam/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/setting/SetDisConnectActivity;I)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->setSelect(I)V

    return-void
.end method

.method private createList()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080051

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v7, v5}, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->getView(ILjava/lang/String;)Lbr/com/dina/ui/model/ViewItem;

    move-result-object v4

    .line 78
    .local v4, "view_record_stop":Lbr/com/dina/ui/model/ViewItem;
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->tableViewStopRecord:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {v5, v4}, Lbr/com/dina/ui/widget/UITableView;->addViewItem(Lbr/com/dina/ui/model/ViewItem;)V

    .line 79
    invoke-virtual {v4}, Lbr/com/dina/ui/model/ViewItem;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0c0092

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 80
    .local v0, "button":Landroid/widget/ToggleButton;
    new-instance v5, Lcom/aee/sport/magicam/setting/SetDisConnectActivity$1;

    invoke-direct {v5, p0}, Lcom/aee/sport/magicam/setting/SetDisConnectActivity$1;-><init>(Lcom/aee/sport/magicam/setting/SetDisConnectActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    const-string v5, "record_stop"

    invoke-static {v5, v7}, Lcom/aee/sport/magicam/utils/MySharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 96
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    .line 97
    .local v2, "system":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 98
    array-length v5, v2

    new-array v5, v5, [Lbr/com/dina/ui/model/ViewItem;

    iput-object v5, p0, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->view:[Lbr/com/dina/ui/model/ViewItem;

    .line 99
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->view:[Lbr/com/dina/ui/model/ViewItem;

    array-length v5, v5

    if-lt v1, v5, :cond_0

    .line 104
    const/4 v3, 0x0

    .line 105
    .local v3, "type":I
    const-string v5, "disconnet_status"

    invoke-static {v5}, Lcom/aee/sport/magicam/utils/MySharedPreferences;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 106
    invoke-direct {p0, v3}, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->setSelect(I)V

    .line 108
    return-void

    .line 100
    .end local v3    # "type":I
    :cond_0
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->view:[Lbr/com/dina/ui/model/ViewItem;

    aget-object v6, v2, v1

    invoke-direct {p0, v6}, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->getView(Ljava/lang/String;)Lbr/com/dina/ui/model/ViewItem;

    move-result-object v6

    aput-object v6, v5, v1

    .line 101
    iget-object v5, p0, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->tableVieStatus:Lbr/com/dina/ui/widget/UITableView;

    iget-object v6, p0, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->view:[Lbr/com/dina/ui/model/ViewItem;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Lbr/com/dina/ui/widget/UITableView;->addViewItem(Lbr/com/dina/ui/model/ViewItem;)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getView(ILjava/lang/String;)Lbr/com/dina/ui/model/ViewItem;
    .locals 7
    .param p1, "type"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0c0046

    .line 152
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 153
    .local v0, "mInflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 154
    .local v2, "view":Landroid/view/View;
    if-nez p1, :cond_1

    .line 155
    const v4, 0x7f03002e

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 157
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 158
    .local v1, "titleview":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 159
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_0
    :goto_0
    new-instance v3, Lbr/com/dina/ui/model/ViewItem;

    invoke-direct {v3, v2}, Lbr/com/dina/ui/model/ViewItem;-><init>(Landroid/view/View;)V

    .line 169
    .local v3, "viewItem":Lbr/com/dina/ui/model/ViewItem;
    return-object v3

    .line 161
    .end local v1    # "titleview":Landroid/widget/TextView;
    .end local v3    # "viewItem":Lbr/com/dina/ui/model/ViewItem;
    :cond_1
    const v4, 0x7f030029

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 163
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 164
    .restart local v1    # "titleview":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 165
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getView(Ljava/lang/String;)Lbr/com/dina/ui/model/ViewItem;
    .locals 6
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 132
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 133
    .local v0, "mInflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 135
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f03002a

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 137
    const v4, 0x7f0c0046

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 138
    .local v1, "titleview":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_0
    new-instance v3, Lbr/com/dina/ui/model/ViewItem;

    invoke-direct {v3, v2}, Lbr/com/dina/ui/model/ViewItem;-><init>(Landroid/view/View;)V

    .line 142
    .local v3, "viewItem":Lbr/com/dina/ui/model/ViewItem;
    return-object v3
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->setTitleText(I)V

    .line 60
    const v0, 0x7f0c0044

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/dina/ui/widget/UITableView;

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->tableViewStopRecord:Lbr/com/dina/ui/widget/UITableView;

    .line 61
    const v0, 0x7f0c0045

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/dina/ui/widget/UITableView;

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->tableVieStatus:Lbr/com/dina/ui/widget/UITableView;

    .line 63
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->tableViewStopRecord:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {v0}, Lbr/com/dina/ui/widget/UITableView;->clear()V

    .line 64
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->tableVieStatus:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {v0}, Lbr/com/dina/ui/widget/UITableView;->clear()V

    .line 66
    invoke-direct {p0}, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->createList()V

    .line 67
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->tableViewStopRecord:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {v0}, Lbr/com/dina/ui/widget/UITableView;->commit()V

    .line 68
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->tableVieStatus:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {v0}, Lbr/com/dina/ui/widget/UITableView;->commit()V

    .line 70
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->tableViewStopRecord:Lbr/com/dina/ui/widget/UITableView;

    new-instance v1, Lcom/aee/sport/magicam/setting/SetDisConnectActivity$CommonClickListener;

    invoke-direct {v1, p0, v2}, Lcom/aee/sport/magicam/setting/SetDisConnectActivity$CommonClickListener;-><init>(Lcom/aee/sport/magicam/setting/SetDisConnectActivity;Lcom/aee/sport/magicam/setting/SetDisConnectActivity$CommonClickListener;)V

    invoke-virtual {v0, v1}, Lbr/com/dina/ui/widget/UITableView;->setClickListener(Lbr/com/dina/ui/widget/UITableView$ClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->tableVieStatus:Lbr/com/dina/ui/widget/UITableView;

    new-instance v1, Lcom/aee/sport/magicam/setting/SetDisConnectActivity$CameraClickListener;

    invoke-direct {v1, p0, v2}, Lcom/aee/sport/magicam/setting/SetDisConnectActivity$CameraClickListener;-><init>(Lcom/aee/sport/magicam/setting/SetDisConnectActivity;Lcom/aee/sport/magicam/setting/SetDisConnectActivity$CameraClickListener;)V

    invoke-virtual {v0, v1}, Lbr/com/dina/ui/widget/UITableView;->setClickListener(Lbr/com/dina/ui/widget/UITableView$ClickListener;)V

    .line 73
    return-void
.end method

.method private setSelect(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const v5, 0x7f0c0090

    const v4, 0x7f0c0046

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->view:[Lbr/com/dina/ui/model/ViewItem;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 123
    return-void

    .line 113
    :cond_0
    if-ne p1, v0, :cond_1

    .line 114
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->view:[Lbr/com/dina/ui/model/ViewItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lbr/com/dina/ui/model/ViewItem;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0200cf

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 115
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->view:[Lbr/com/dina/ui/model/ViewItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lbr/com/dina/ui/model/ViewItem;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->view:[Lbr/com/dina/ui/model/ViewItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lbr/com/dina/ui/model/ViewItem;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 118
    iget-object v1, p0, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->view:[Lbr/com/dina/ui/model/ViewItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lbr/com/dina/ui/model/ViewItem;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onClick(Landroid/view/View;)V

    .line 225
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->setContentView(I)V

    .line 50
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->init()V

    .line 55
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onResume()V

    .line 56
    return-void
.end method
