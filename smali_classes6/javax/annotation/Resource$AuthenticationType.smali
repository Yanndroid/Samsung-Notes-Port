.class public final enum Ljavax/annotation/Resource$AuthenticationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/annotation/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthenticationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/annotation/Resource$AuthenticationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/annotation/Resource$AuthenticationType;

.field public static final enum APPLICATION:Ljavax/annotation/Resource$AuthenticationType;

.field public static final enum CONTAINER:Ljavax/annotation/Resource$AuthenticationType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljavax/annotation/Resource$AuthenticationType;

    const-string v1, "CONTAINER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/annotation/Resource$AuthenticationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/annotation/Resource$AuthenticationType;->CONTAINER:Ljavax/annotation/Resource$AuthenticationType;

    new-instance v1, Ljavax/annotation/Resource$AuthenticationType;

    const-string v3, "APPLICATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljavax/annotation/Resource$AuthenticationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljavax/annotation/Resource$AuthenticationType;->APPLICATION:Ljavax/annotation/Resource$AuthenticationType;

    const/4 v3, 0x2

    new-array v3, v3, [Ljavax/annotation/Resource$AuthenticationType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Ljavax/annotation/Resource$AuthenticationType;->$VALUES:[Ljavax/annotation/Resource$AuthenticationType;

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

.method public static valueOf(Ljava/lang/String;)Ljavax/annotation/Resource$AuthenticationType;
    .locals 1

    const-class v0, Ljavax/annotation/Resource$AuthenticationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/annotation/Resource$AuthenticationType;

    return-object p0
.end method

.method public static values()[Ljavax/annotation/Resource$AuthenticationType;
    .locals 1

    sget-object v0, Ljavax/annotation/Resource$AuthenticationType;->$VALUES:[Ljavax/annotation/Resource$AuthenticationType;

    invoke-virtual {v0}, [Ljavax/annotation/Resource$AuthenticationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/annotation/Resource$AuthenticationType;

    return-object v0
.end method
