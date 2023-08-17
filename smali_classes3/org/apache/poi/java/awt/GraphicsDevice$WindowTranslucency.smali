.class public final enum Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/GraphicsDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WindowTranslucency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;

.field public static final enum PERPIXEL_TRANSLUCENT:Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;

.field public static final enum PERPIXEL_TRANSPARENT:Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;

.field public static final enum TRANSLUCENT:Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;

    const-string v1, "PERPIXEL_TRANSPARENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;->PERPIXEL_TRANSPARENT:Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;

    new-instance v1, Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;

    const-string v3, "TRANSLUCENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;->TRANSLUCENT:Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;

    new-instance v3, Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;

    const-string v5, "PERPIXEL_TRANSLUCENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;->PERPIXEL_TRANSLUCENT:Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;->$VALUES:[Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;
    .locals 1

    const-class v0, Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;->$VALUES:[Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;

    invoke-virtual {v0}, [Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;

    return-object v0
.end method
