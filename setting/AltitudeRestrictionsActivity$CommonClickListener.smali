.class Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity$CommonClickListener;
.super Ljava/lang/Object;
.source "AltitudeRestrictionsActivity.java"

# interfaces
.implements Lbr/com/dina/ui/widget/UITableView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;


# direct methods
.method private constructor <init>(Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity$CommonClickListener;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity$CommonClickListener;-><init>(Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity$CommonClickListener;->this$0:Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;

    invoke-static {v0}, Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;->access$0(Lcom/aee/sport/magicam/setting/AltitudeRestrictionsActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 107
    return-void
.end method
