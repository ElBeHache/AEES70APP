.class public Lcom/aee/sport/magicam/setting/SettingActivity;
.super Lcom/aee/sport/magicam/BaseActivity;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aee/sport/magicam/setting/SettingActivity$CameraClickListener;,
        Lcom/aee/sport/magicam/setting/SettingActivity$CommonClickListener;,
        Lcom/aee/sport/magicam/setting/SettingActivity$OtherClickListener;,
        Lcom/aee/sport/magicam/setting/SettingActivity$PTZClickListener;,
        Lcom/aee/sport/magicam/setting/SettingActivity$ShareClickListener;
    }
.end annotation


# instance fields
.field protected manager:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

.field private progressDialog:Lcom/aee/sport/magicam/widget/MyProgressDialog;

.field private tableViewCommon:Lbr/com/dina/ui/widget/UITableView;

.field private tableViewOther:Lbr/com/dina/ui/widget/UITableView;

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/aee/sport/magicam/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    invoke-static {p0}, Lcom/aee/sport/magicam/setting/SettingActivity;->clearFiles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/aee/sport/magicam/setting/SettingActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/SettingActivity;->tv:Landroid/widget/TextView;

    return-object v0
.end method

.method private static clearFiles(Ljava/lang/String;)V
    .locals 2
    .param p0, "workspaceRootPath"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static {v0}, Lcom/aee/sport/magicam/setting/SettingActivity;->deleteFile(Ljava/io/File;)V

    .line 99
    :cond_0
    return-void
.end method

.method private createList()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 133
    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080038

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v8, v6}, Lcom/aee/sport/magicam/setting/SettingActivity;->getView(ILjava/lang/String;)Lbr/com/dina/ui/model/ViewItem;

    move-result-object v5

    .line 134
    .local v5, "view_clear_app_cache":Lbr/com/dina/ui/model/ViewItem;
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/SettingActivity;->tableViewCommon:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {v6, v5}, Lbr/com/dina/ui/widget/UITableView;->addViewItem(Lbr/com/dina/ui/model/ViewItem;)V

    .line 135
    invoke-virtual {v5}, Lbr/com/dina/ui/model/ViewItem;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0c008f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 136
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v5}, Lbr/com/dina/ui/model/ViewItem;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0c0048

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/aee/sport/magicam/setting/SettingActivity;->tv:Landroid/widget/TextView;

    .line 137
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/aee/sport/magicam/utils/Constants;->DISKCACHEPATH:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/aee/sport/magicam/setting/SettingActivity;->getDirSize(Ljava/io/File;)D

    move-result-wide v2

    .line 138
    .local v2, "size":D
    const-string v6, "%.2f"

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "result":Ljava/lang/String;
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/SettingActivity;->tv:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " M"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    new-instance v6, Lcom/aee/sport/magicam/setting/SettingActivity$1;

    invoke-direct {v6, p0}, Lcom/aee/sport/magicam/setting/SettingActivity$1;-><init>(Lcom/aee/sport/magicam/setting/SettingActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "version":Ljava/lang/String;
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/SettingActivity;->tableViewOther:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080049

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v4}, Lbr/com/dina/ui/widget/UITableView;->addBasicItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/SettingActivity;->tableViewOther:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {p0}, Lcom/aee/sport/magicam/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08004a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbr/com/dina/ui/widget/UITableView;->addBasicItem(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method private static deleteFile(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 104
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 108
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 109
    return-void

    .line 105
    .restart local v0    # "files":[Ljava/io/File;
    .restart local v1    # "i":I
    :cond_1
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/aee/sport/magicam/setting/SettingActivity;->deleteFile(Ljava/io/File;)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getDirSize(Ljava/io/File;)D
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    .line 113
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 115
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 117
    .local v0, "children":[Ljava/io/File;
    const-wide/16 v2, 0x0

    .line 118
    .local v2, "size":D
    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 126
    .end local v0    # "children":[Ljava/io/File;
    .end local v2    # "size":D
    :goto_1
    return-wide v2

    .line 118
    .restart local v0    # "children":[Ljava/io/File;
    .restart local v2    # "size":D
    :cond_0
    aget-object v1, v0, v4

    .line 119
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Lcom/aee/sport/magicam/setting/SettingActivity;->getDirSize(Ljava/io/File;)D

    move-result-wide v6

    add-double/2addr v2, v6

    .line 118
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "children":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "size":D
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    div-double v2, v4, v6

    .line 123
    .restart local v2    # "size":D
    goto :goto_1

    .line 126
    .end local v2    # "size":D
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method private getView(ILjava/lang/String;)Lbr/com/dina/ui/model/ViewItem;
    .locals 7
    .param p1, "type"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0c0046

    .line 189
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/aee/sport/magicam/setting/SettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 190
    .local v0, "mInflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 191
    .local v2, "view":Landroid/view/View;
    if-nez p1, :cond_1

    .line 192
    const v4, 0x7f03002e

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 194
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 195
    .local v1, "titleview":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 196
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :cond_0
    :goto_0
    new-instance v3, Lbr/com/dina/ui/model/ViewItem;

    invoke-direct {v3, v2}, Lbr/com/dina/ui/model/ViewItem;-><init>(Landroid/view/View;)V

    .line 206
    .local v3, "viewItem":Lbr/com/dina/ui/model/ViewItem;
    return-object v3

    .line 198
    .end local v1    # "titleview":Landroid/widget/TextView;
    .end local v3    # "viewItem":Lbr/com/dina/ui/model/ViewItem;
    :cond_1
    const v4, 0x7f030029

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 200
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 201
    .restart local v1    # "titleview":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 202
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/aee/sport/magicam/widget/MyProgressDialog;

    invoke-direct {v0, p0}, Lcom/aee/sport/magicam/widget/MyProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/SettingActivity;->progressDialog:Lcom/aee/sport/magicam/widget/MyProgressDialog;

    .line 74
    const v0, 0x7f0c0033

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/dina/ui/widget/UITableView;

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/SettingActivity;->tableViewCommon:Lbr/com/dina/ui/widget/UITableView;

    .line 75
    const v0, 0x7f0c0034

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/dina/ui/widget/UITableView;

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/SettingActivity;->tableViewOther:Lbr/com/dina/ui/widget/UITableView;

    .line 78
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/SettingActivity;->tableViewCommon:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {v0}, Lbr/com/dina/ui/widget/UITableView;->clear()V

    .line 79
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/SettingActivity;->tableViewOther:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {v0}, Lbr/com/dina/ui/widget/UITableView;->clear()V

    .line 82
    invoke-direct {p0}, Lcom/aee/sport/magicam/setting/SettingActivity;->createList()V

    .line 83
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/SettingActivity;->tableViewCommon:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {v0}, Lbr/com/dina/ui/widget/UITableView;->commit()V

    .line 84
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/SettingActivity;->tableViewOther:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {v0}, Lbr/com/dina/ui/widget/UITableView;->commit()V

    .line 87
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/SettingActivity;->tableViewCommon:Lbr/com/dina/ui/widget/UITableView;

    new-instance v1, Lcom/aee/sport/magicam/setting/SettingActivity$CommonClickListener;

    invoke-direct {v1, p0, v2}, Lcom/aee/sport/magicam/setting/SettingActivity$CommonClickListener;-><init>(Lcom/aee/sport/magicam/setting/SettingActivity;Lcom/aee/sport/magicam/setting/SettingActivity$CommonClickListener;)V

    invoke-virtual {v0, v1}, Lbr/com/dina/ui/widget/UITableView;->setClickListener(Lbr/com/dina/ui/widget/UITableView$ClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/SettingActivity;->tableViewOther:Lbr/com/dina/ui/widget/UITableView;

    new-instance v1, Lcom/aee/sport/magicam/setting/SettingActivity$OtherClickListener;

    invoke-direct {v1, p0, v2}, Lcom/aee/sport/magicam/setting/SettingActivity$OtherClickListener;-><init>(Lcom/aee/sport/magicam/setting/SettingActivity;Lcom/aee/sport/magicam/setting/SettingActivity$OtherClickListener;)V

    invoke-virtual {v0, v1}, Lbr/com/dina/ui/widget/UITableView;->setClickListener(Lbr/com/dina/ui/widget/UITableView$ClickListener;)V

    .line 91
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 414
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onClick(Landroid/view/View;)V

    .line 415
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/setting/SettingActivity;->setContentView(I)V

    .line 62
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/SettingActivity;->manager:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/SettingActivity;->manager:Lcom/aee/sport/magicam/softwareupdate/UpdateManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/aee/sport/magicam/softwareupdate/UpdateManager;->isShow:Z

    .line 179
    :cond_0
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onDestroy()V

    .line 180
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/aee/sport/magicam/setting/SettingActivity;->init()V

    .line 67
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onResume()V

    .line 68
    return-void
.end method
