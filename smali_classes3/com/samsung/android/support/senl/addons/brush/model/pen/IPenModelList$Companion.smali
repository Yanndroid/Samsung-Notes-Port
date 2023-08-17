.class public final Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\"\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0010X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;",
        "",
        "()V",
        "ERASER_NAME",
        "",
        "getERASER_NAME",
        "()Ljava/lang/String;",
        "setERASER_NAME",
        "(Ljava/lang/String;)V",
        "PEN_COUNT",
        "",
        "getPEN_COUNT",
        "()I",
        "setPEN_COUNT",
        "(I)V",
        "PEN_NAMES",
        "",
        "getPEN_NAMES",
        "()[Ljava/lang/String;",
        "setPEN_NAMES",
        "([Ljava/lang/String;)V",
        "[Ljava/lang/String;",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;

.field private static ERASER_NAME:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static PEN_COUNT:I

.field private static PEN_NAMES:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;

    const/16 v0, 0x9

    sput v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->PEN_COUNT:I

    const-string v1, "WaterColorBrush"

    const-string v2, "OilBrush"

    const-string v3, "BrushPen"

    const-string v4, "Pencil"

    const-string v5, "ColoredPencil"

    const-string v6, "Smudge"

    const-string v7, "AirBrushPen"

    const-string v8, "Marker"

    const-string v9, "Crayon"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->PEN_NAMES:[Ljava/lang/String;

    const-string v0, "Eraser"

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->ERASER_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getERASER_NAME()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->ERASER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public final getPEN_COUNT()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->PEN_COUNT:I

    return v0
.end method

.method public final getPEN_NAMES()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->PEN_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method public final setERASER_NAME(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->ERASER_NAME:Ljava/lang/String;

    return-void
.end method

.method public final setPEN_COUNT(I)V
    .locals 0

    sput p1, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->PEN_COUNT:I

    return-void
.end method

.method public final setPEN_NAMES([Ljava/lang/String;)V
    .locals 1
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->PEN_NAMES:[Ljava/lang/String;

    return-void
.end method
