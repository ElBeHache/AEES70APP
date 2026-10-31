.class public Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CustomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/adapter/CustomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public btClick:Landroid/widget/ImageView;

.field public btdis:Landroid/widget/ImageView;

.field public cbSelect:Landroid/widget/CheckBox;

.field public progress:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/aee/sport/magicam/adapter/CustomAdapter;

.field public tvContent:Landroid/widget/TextView;

.field public tvsize:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/aee/sport/magicam/adapter/CustomAdapter;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->this$0:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
