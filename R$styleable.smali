.class public final Lcom/aee/sport/magicam/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final UIButton:[I

.field public static final UIButton_image:I = 0x2

.field public static final UIButton_subtitle:I = 0x1

.field public static final UIButton_title:I = 0x0

.field public static final myRoute:[I

.field public static final myRoute_det:I = 0x1

.field public static final myRoute_localRemote:I = 0x3

.field public static final myRoute_pic:I = 0x2

.field public static final myRoute_startDegrees:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1302
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/aee/sport/magicam/R$styleable;->UIButton:[I

    .line 1363
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/aee/sport/magicam/R$styleable;->myRoute:[I

    .line 1287
    return-void

    .line 1302
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
    .end array-data

    .line 1363
    :array_1
    .array-data 4
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
