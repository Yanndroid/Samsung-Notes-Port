.class public final enum Lorg/apache/poi/openxml4j/opc/TargetMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/openxml4j/opc/TargetMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/openxml4j/opc/TargetMode;

.field public static final enum EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

.field public static final enum INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/poi/openxml4j/opc/TargetMode;

    const-string v1, "INTERNAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/openxml4j/opc/TargetMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    new-instance v1, Lorg/apache/poi/openxml4j/opc/TargetMode;

    const-string v3, "EXTERNAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/openxml4j/opc/TargetMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/poi/openxml4j/opc/TargetMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/apache/poi/openxml4j/opc/TargetMode;->$VALUES:[Lorg/apache/poi/openxml4j/opc/TargetMode;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/TargetMode;
    .locals 1

    const-class v0, Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/openxml4j/opc/TargetMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/openxml4j/opc/TargetMode;
    .locals 1

    sget-object v0, Lorg/apache/poi/openxml4j/opc/TargetMode;->$VALUES:[Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {v0}, [Lorg/apache/poi/openxml4j/opc/TargetMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/openxml4j/opc/TargetMode;

    return-object v0
.end method
