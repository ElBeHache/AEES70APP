.class Lcom/aee/sport/magicam/setting/SetDisConnectActivity$1;
.super Ljava/lang/Object;
.source "SetDisConnectActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/setting/SetDisConnectActivity;->createList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/setting/SetDisConnectActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/setting/SetDisConnectActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/SetDisConnectActivity$1;->this$0:Lcom/aee/sport/magicam/setting/SetDisConnectActivity;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 84
    const-string v0, "record_stop"

    invoke-static {v0, p2}, Lcom/aee/sport/magicam/utils/MySharedPreferences;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    return-void
.end method
