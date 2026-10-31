.class Lcom/aee/sport/magicam/setting/SettingActivity$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/setting/SettingActivity;->createList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/setting/SettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/SettingActivity$1;->this$0:Lcom/aee/sport/magicam/setting/SettingActivity;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 146
    sget-object v0, Lcom/aee/sport/magicam/utils/Constants;->DISKCACHEPATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/aee/sport/magicam/setting/SettingActivity;->access$0(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/SettingActivity$1;->this$0:Lcom/aee/sport/magicam/setting/SettingActivity;

    invoke-static {v0}, Lcom/aee/sport/magicam/setting/SettingActivity;->access$1(Lcom/aee/sport/magicam/setting/SettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "0.00M"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method
