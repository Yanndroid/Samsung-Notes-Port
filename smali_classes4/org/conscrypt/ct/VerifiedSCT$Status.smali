.class public final enum Lorg/conscrypt/ct/VerifiedSCT$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/ct/VerifiedSCT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/conscrypt/ct/VerifiedSCT$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/conscrypt/ct/VerifiedSCT$Status;

.field public static final enum INVALID_SCT:Lorg/conscrypt/ct/VerifiedSCT$Status;

.field public static final enum INVALID_SIGNATURE:Lorg/conscrypt/ct/VerifiedSCT$Status;

.field public static final enum UNKNOWN_LOG:Lorg/conscrypt/ct/VerifiedSCT$Status;

.field public static final enum VALID:Lorg/conscrypt/ct/VerifiedSCT$Status;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/conscrypt/ct/VerifiedSCT$Status;

    const-string v1, "VALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/ct/VerifiedSCT$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/conscrypt/ct/VerifiedSCT$Status;->VALID:Lorg/conscrypt/ct/VerifiedSCT$Status;

    new-instance v1, Lorg/conscrypt/ct/VerifiedSCT$Status;

    const-string v3, "INVALID_SIGNATURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/conscrypt/ct/VerifiedSCT$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/conscrypt/ct/VerifiedSCT$Status;->INVALID_SIGNATURE:Lorg/conscrypt/ct/VerifiedSCT$Status;

    new-instance v3, Lorg/conscrypt/ct/VerifiedSCT$Status;

    const-string v5, "UNKNOWN_LOG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/conscrypt/ct/VerifiedSCT$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/conscrypt/ct/VerifiedSCT$Status;->UNKNOWN_LOG:Lorg/conscrypt/ct/VerifiedSCT$Status;

    new-instance v5, Lorg/conscrypt/ct/VerifiedSCT$Status;

    const-string v7, "INVALID_SCT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/conscrypt/ct/VerifiedSCT$Status;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lorg/conscrypt/ct/VerifiedSCT$Status;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/conscrypt/ct/VerifiedSCT$Status;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/conscrypt/ct/VerifiedSCT$Status;->$VALUES:[Lorg/conscrypt/ct/VerifiedSCT$Status;

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

.method public static valueOf(Ljava/lang/String;)Lorg/conscrypt/ct/VerifiedSCT$Status;
    .locals 1

    const-class v0, Lorg/conscrypt/ct/VerifiedSCT$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/conscrypt/ct/VerifiedSCT$Status;

    return-object p0
.end method

.method public static values()[Lorg/conscrypt/ct/VerifiedSCT$Status;
    .locals 1

    sget-object v0, Lorg/conscrypt/ct/VerifiedSCT$Status;->$VALUES:[Lorg/conscrypt/ct/VerifiedSCT$Status;

    invoke-virtual {v0}, [Lorg/conscrypt/ct/VerifiedSCT$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/conscrypt/ct/VerifiedSCT$Status;

    return-object v0
.end method
