.class public final enum Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsg/voiceframework/NoiseReduction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;

.field public static final enum DEFAULT:Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;

.field public static final enum FOREPD:Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;

.field public static final enum LESS:Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;

.field public static final enum STEREOTOMONO:Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;->DEFAULT:Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;

    new-instance v1, Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;

    const-string v3, "LESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;->LESS:Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;

    new-instance v3, Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;

    const-string v5, "FOREPD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;->FOREPD:Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;

    new-instance v5, Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;

    const-string v7, "STEREOTOMONO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;->STEREOTOMONO:Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;->$VALUES:[Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;
    .locals 1

    const-class v0, Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;

    return-object p0
.end method

.method public static values()[Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;
    .locals 1

    sget-object v0, Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;->$VALUES:[Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;

    invoke-virtual {v0}, [Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;

    return-object v0
.end method
