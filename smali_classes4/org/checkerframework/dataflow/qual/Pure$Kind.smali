.class public final enum Lorg/checkerframework/dataflow/qual/Pure$Kind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/qual/Pure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/dataflow/qual/Pure$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/dataflow/qual/Pure$Kind;

.field public static final enum DETERMINISTIC:Lorg/checkerframework/dataflow/qual/Pure$Kind;

.field public static final enum SIDE_EFFECT_FREE:Lorg/checkerframework/dataflow/qual/Pure$Kind;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/checkerframework/dataflow/qual/Pure$Kind;

    const-string v1, "SIDE_EFFECT_FREE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/dataflow/qual/Pure$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/dataflow/qual/Pure$Kind;->SIDE_EFFECT_FREE:Lorg/checkerframework/dataflow/qual/Pure$Kind;

    new-instance v1, Lorg/checkerframework/dataflow/qual/Pure$Kind;

    const-string v3, "DETERMINISTIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/checkerframework/dataflow/qual/Pure$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/dataflow/qual/Pure$Kind;->DETERMINISTIC:Lorg/checkerframework/dataflow/qual/Pure$Kind;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/checkerframework/dataflow/qual/Pure$Kind;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/checkerframework/dataflow/qual/Pure$Kind;->$VALUES:[Lorg/checkerframework/dataflow/qual/Pure$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/dataflow/qual/Pure$Kind;
    .locals 1

    const-class v0, Lorg/checkerframework/dataflow/qual/Pure$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/checkerframework/dataflow/qual/Pure$Kind;

    return-object p0
.end method

.method public static values()[Lorg/checkerframework/dataflow/qual/Pure$Kind;
    .locals 1

    sget-object v0, Lorg/checkerframework/dataflow/qual/Pure$Kind;->$VALUES:[Lorg/checkerframework/dataflow/qual/Pure$Kind;

    invoke-virtual {v0}, [Lorg/checkerframework/dataflow/qual/Pure$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/dataflow/qual/Pure$Kind;

    return-object v0
.end method
