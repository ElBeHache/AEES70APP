.class Lcom/aee/sport/magicam/setting/SetDisConnectActivity$CommonClickListener;
.super Ljava/lang/Object;
.source "SetDisConnectActivity.java"

# interfaces
.implements Lbr/com/dina/ui/widget/UITableView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/setting/SetDisConnectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/setting/SetDisConnectActivity;


# direct methods
.method private constructor <init>(Lcom/aee/sport/magicam/setting/SetDisConnectActivity;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/SetDisConnectActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/setting/SetDisConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aee/sport/magicam/setting/SetDisConnectActivity;Lcom/aee/sport/magicam/setting/SetDisConnectActivity$CommonClickListener;)V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/setting/SetDisConnectActivity$CommonClickListener;-><init>(Lcom/aee/sport/magicam/setting/SetDisConnectActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 186
    packed-switch p1, :pswitch_data_0

    .line 201
    :pswitch_0
    return-void

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
