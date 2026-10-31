.class public Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;
.super Lcom/aee/sport/magicam/BaseActivity;
.source "SelectNormalActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;
    }
.end annotation


# static fields
.field private static isOK:Z


# instance fields
.field private fromFlag:I

.field private param:Ljava/lang/String;

.field protected receiveMsg:Lcom/aee/sport/magicam/bean/ReceiveMsg;

.field protected sendMsg:Lcom/aee/sport/magicam/bean/SendMsg;

.field private settable:Z

.field private systemArrayName:[Ljava/lang/String;

.field private systemArrayValue:[Ljava/lang/String;

.field private tableView:Lbr/com/dina/ui/widget/UITableView;

.field private type:Ljava/lang/String;

.field private vals:[Ljava/lang/String;

.field private view:[Lbr/com/dina/ui/model/ViewItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->isOK:Z

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/aee/sport/magicam/BaseActivity;-><init>()V

    .line 47
    iput v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->fromFlag:I

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->param:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->type:Ljava/lang/String;

    .line 58
    iput-boolean v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->settable:Z

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->settable:Z

    return v0
.end method

.method static synthetic access$1(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;I)V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->setSelect(I)V

    return-void
.end method

.method static synthetic access$10(Z)V
    .locals 0

    .prologue
    .line 51
    sput-boolean p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->isOK:Z

    return-void
.end method

.method static synthetic access$11(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getBaseInfo()V

    return-void
.end method

.method static synthetic access$12(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->systemArrayName:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->settable:Z

    return-void
.end method

.method static synthetic access$14(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->systemArrayValue:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->vals:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->vals:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->init()V

    return-void
.end method

.method static synthetic access$2(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->fromFlag:I

    return v0
.end method

.method static synthetic access$3(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->type:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->systemArrayName:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->param:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->systemArrayValue:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->param:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->isOK:Z

    return v0
.end method

.method private createList()V
    .locals 6

    .prologue
    .line 400
    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->systemArrayName:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Lbr/com/dina/ui/model/ViewItem;

    iput-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->view:[Lbr/com/dina/ui/model/ViewItem;

    .line 401
    iget v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->fromFlag:I

    const v3, 0x8006

    if-ne v2, v3, :cond_2

    .line 402
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->view:[Lbr/com/dina/ui/model/ViewItem;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 413
    :cond_0
    const/4 v1, 0x0

    .line 415
    .local v1, "type":I
    iget v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->fromFlag:I

    packed-switch v2, :pswitch_data_0

    .line 466
    :pswitch_0
    const-string v2, "\u754c\u9762\u672a\u8bbe\u8ba1"

    invoke-static {v2}, Lcom/aee/sport/magicam/utils/MySharedPreferences;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 470
    :goto_1
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->setSelect(I)V

    .line 471
    return-void

    .line 403
    .end local v1    # "type":I
    :cond_1
    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->view:[Lbr/com/dina/ui/model/ViewItem;

    iget-object v3, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->systemArrayName:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, "x0"

    const-string v5, "x"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "P 0"

    const-string v5, "P "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getView(Ljava/lang/String;)Lbr/com/dina/ui/model/ViewItem;

    move-result-object v3

    aput-object v3, v2, v0

    .line 404
    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->tableView:Lbr/com/dina/ui/widget/UITableView;

    iget-object v3, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->view:[Lbr/com/dina/ui/model/ViewItem;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lbr/com/dina/ui/widget/UITableView;->addViewItem(Lbr/com/dina/ui/model/ViewItem;)V

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->view:[Lbr/com/dina/ui/model/ViewItem;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 408
    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->view:[Lbr/com/dina/ui/model/ViewItem;

    iget-object v3, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->systemArrayName:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getView(Ljava/lang/String;)Lbr/com/dina/ui/model/ViewItem;

    move-result-object v3

    aput-object v3, v2, v0

    .line 409
    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->tableView:Lbr/com/dina/ui/widget/UITableView;

    iget-object v3, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->view:[Lbr/com/dina/ui/model/ViewItem;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lbr/com/dina/ui/widget/UITableView;->addViewItem(Lbr/com/dina/ui/model/ViewItem;)V

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 417
    .restart local v1    # "type":I
    :pswitch_2
    const-string v2, "parameter_unit"

    invoke-static {v2}, Lcom/aee/sport/magicam/utils/MySharedPreferences;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 418
    goto :goto_1

    .line 420
    :pswitch_3
    const-string v2, "preview_picture"

    invoke-static {v2}, Lcom/aee/sport/magicam/utils/MySharedPreferences;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 421
    goto :goto_1

    .line 423
    :pswitch_4
    const-string v2, "disconnet_status"

    invoke-static {v2}, Lcom/aee/sport/magicam/utils/MySharedPreferences;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 424
    goto :goto_1

    .line 427
    :pswitch_5
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/aee/sport/magicam/AeeApplication;->value:Ljava/lang/String;

    iget-object v3, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->systemArrayName:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aee/sport/magicam/utils/PublicUtils;->getIndexFromArray(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 428
    goto :goto_1

    .line 431
    :pswitch_6
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/aee/sport/magicam/AeeApplication;->value:Ljava/lang/String;

    iget-object v3, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->systemArrayValue:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aee/sport/magicam/utils/PublicUtils;->getIndexFromArray(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 432
    goto :goto_1

    .line 435
    :pswitch_7
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/aee/sport/magicam/AeeApplication;->value:Ljava/lang/String;

    iget-object v3, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->systemArrayName:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aee/sport/magicam/utils/PublicUtils;->getIndexFromArray(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 436
    goto/16 :goto_1

    .line 439
    :pswitch_8
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/aee/sport/magicam/AeeApplication;->value:Ljava/lang/String;

    iget-object v3, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->systemArrayValue:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aee/sport/magicam/utils/PublicUtils;->getIndexFromArray(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 440
    goto/16 :goto_1

    .line 448
    :pswitch_9
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/aee/sport/magicam/AeeApplication;->value:Ljava/lang/String;

    iget-object v3, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->systemArrayValue:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aee/sport/magicam/utils/PublicUtils;->getIndexFromArray(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 449
    goto/16 :goto_1

    .line 451
    :pswitch_a
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/aee/sport/magicam/AeeApplication;->value:Ljava/lang/String;

    iget-object v3, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->systemArrayValue:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aee/sport/magicam/utils/PublicUtils;->getIndexFromArray(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 452
    goto/16 :goto_1

    .line 457
    :pswitch_b
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/aee/sport/magicam/AeeApplication;->value:Ljava/lang/String;

    iget-object v3, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->systemArrayValue:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aee/sport/magicam/utils/PublicUtils;->getIndexFromArray(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 458
    goto/16 :goto_1

    .line 460
    :pswitch_c
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/aee/sport/magicam/AeeApplication;->value:Ljava/lang/String;

    iget-object v3, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->systemArrayValue:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aee/sport/magicam/utils/PublicUtils;->getIndexFromArray(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 461
    goto/16 :goto_1

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x8003
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_1
    .end packed-switch
.end method

.method private getBaseInfo()V
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromFlag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->fromFlag:I

    .line 84
    invoke-virtual {p0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->showMyProgress()V

    .line 85
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;-><init>(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 328
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 332
    return-void
.end method

.method private getView(Ljava/lang/String;)Lbr/com/dina/ui/model/ViewItem;
    .locals 6
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 495
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 496
    .local v0, "mInflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 498
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f03002a

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 500
    const v4, 0x7f0c0046

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 501
    .local v1, "titleview":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 502
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    :cond_0
    new-instance v3, Lbr/com/dina/ui/model/ViewItem;

    invoke-direct {v3, v2}, Lbr/com/dina/ui/model/ViewItem;-><init>(Landroid/view/View;)V

    .line 505
    .local v3, "viewItem":Lbr/com/dina/ui/model/ViewItem;
    return-object v3
.end method

.method private init()V
    .locals 3

    .prologue
    const v1, 0x7f080063

    .line 336
    iget v0, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->fromFlag:I

    packed-switch v0, :pswitch_data_0

    .line 384
    :pswitch_0
    const-string v0, "\u754c\u9762\u672a\u8bbe\u8ba1"

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->setTitleText(Ljava/lang/String;)V

    .line 389
    :goto_0
    const v0, 0x7f0c0035

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/dina/ui/widget/UITableView;

    iput-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->tableView:Lbr/com/dina/ui/widget/UITableView;

    .line 390
    iget-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->tableView:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {v0}, Lbr/com/dina/ui/widget/UITableView;->clear()V

    .line 391
    invoke-direct {p0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->createList()V

    .line 392
    iget-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->tableView:Lbr/com/dina/ui/widget/UITableView;

    invoke-virtual {v0}, Lbr/com/dina/ui/widget/UITableView;->commit()V

    .line 393
    iget-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->tableView:Lbr/com/dina/ui/widget/UITableView;

    new-instance v1, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;-><init>(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$CommonClickListener;)V

    invoke-virtual {v0, v1}, Lbr/com/dina/ui/widget/UITableView;->setClickListener(Lbr/com/dina/ui/widget/UITableView$ClickListener;)V

    .line 395
    return-void

    .line 338
    :pswitch_1
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->setTitleText(I)V

    goto :goto_0

    .line 341
    :pswitch_2
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->setTitleText(I)V

    goto :goto_0

    .line 344
    :pswitch_3
    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->setTitleText(I)V

    goto :goto_0

    .line 347
    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->setTitleText(I)V

    goto :goto_0

    .line 350
    :pswitch_5
    const v0, 0x7f080064

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->setTitleText(I)V

    goto :goto_0

    .line 353
    :pswitch_6
    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->setTitleText(I)V

    goto :goto_0

    .line 356
    :pswitch_7
    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->setTitleText(I)V

    goto :goto_0

    .line 359
    :pswitch_8
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->setTitleText(I)V

    goto :goto_0

    .line 362
    :pswitch_9
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->setTitleText(I)V

    goto :goto_0

    .line 365
    :pswitch_a
    const v0, 0x7f08008b

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->setTitleText(I)V

    goto :goto_0

    .line 368
    :pswitch_b
    const v0, 0x7f08008c

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->setTitleText(I)V

    goto :goto_0

    .line 371
    :pswitch_c
    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->setTitleText(I)V

    goto :goto_0

    .line 374
    :pswitch_d
    const v0, 0x7f08008f

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->setTitleText(I)V

    goto :goto_0

    .line 377
    :pswitch_e
    const v0, 0x7f080090

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->setTitleText(I)V

    goto :goto_0

    .line 380
    :pswitch_f
    const v0, 0x7f080096

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->setTitleText(I)V

    goto/16 :goto_0

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x8003
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static productConfig()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 696
    :try_start_0
    invoke-static {}, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->Client()Lcom/aee/sport/magicam/parseconfig/ParseConfig;

    move-result-object v1

    .line 697
    .local v1, "pc":Lcom/aee/sport/magicam/parseconfig/ParseConfig;
    invoke-virtual {v1}, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->startConfigThread()V

    .line 698
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 699
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v4

    new-instance v5, Lcom/aee/sport/magicam/bean/SendMsg;

    sget v6, Lcom/aee/sport/magicam/utils/Constants;->AMBA_START_ENCODE:I

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v7

    iget v7, v7, Lcom/aee/sport/magicam/AeeApplication;->token:I

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(III)V

    invoke-virtual {v4, v5}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/bean/SendMsg;)Lcom/aee/sport/magicam/bean/ReceiveMsg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 701
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 706
    :goto_0
    const v4, 0x7f0800a4

    const/4 v5, 0x1

    :try_start_2
    invoke-static {v4, v5}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    .line 710
    :goto_1
    return v2

    .line 702
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 708
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 709
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 710
    goto :goto_1
.end method

.method private setSelect(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const v5, 0x7f0c0090

    const v4, 0x7f0c0046

    .line 474
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->view:[Lbr/com/dina/ui/model/ViewItem;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 486
    return-void

    .line 476
    :cond_0
    if-ne p1, v0, :cond_1

    .line 477
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->view:[Lbr/com/dina/ui/model/ViewItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lbr/com/dina/ui/model/ViewItem;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0200cf

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 478
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->view:[Lbr/com/dina/ui/model/ViewItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lbr/com/dina/ui/model/ViewItem;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 474
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    :cond_1
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->view:[Lbr/com/dina/ui/model/ViewItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lbr/com/dina/ui/model/ViewItem;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 481
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->view:[Lbr/com/dina/ui/model/ViewItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lbr/com/dina/ui/model/ViewItem;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

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
    .line 716
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onClick(Landroid/view/View;)V

    .line 717
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->setContentView(I)V

    .line 73
    invoke-direct {p0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getBaseInfo()V

    .line 75
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 737
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onDestroy()V

    .line 738
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 721
    sget-object v1, Lcom/aee/sport/magicam/service/ControlCMD;->conThread:Lcom/aee/sport/magicam/service/ControlThread;

    if-eqz v1, :cond_0

    .line 722
    sget-object v1, Lcom/aee/sport/magicam/service/ControlCMD;->conThread:Lcom/aee/sport/magicam/service/ControlThread;

    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/aee/sport/magicam/service/ControlThread;->removeHandler(Landroid/os/Handler;)V

    .line 723
    :cond_0
    sget-boolean v1, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->isOK:Z

    if-eqz v1, :cond_1

    .line 724
    const/4 v1, 0x0

    sput-boolean v1, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->isOK:Z

    .line 725
    sget-object v1, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    .line 726
    .local v0, "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    if-eqz v0, :cond_1

    .line 727
    iget-object v1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->param:Ljava/lang/String;

    iput-object v1, v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    .line 728
    sget-object v1, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    .end local v0    # "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    :cond_1
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onPause()V

    .line 732
    return-void
.end method
