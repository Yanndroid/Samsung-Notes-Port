.class public final enum Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;

.field public static final enum SDOC:Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;

.field public static final enum SDOCX:Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;

    const-string v1, "SDOCX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;->SDOCX:Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;

    const-string v3, "SDOC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;->SDOC:Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;->$VALUES:[Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;->$VALUES:[Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/data/resolver/operation/constants/DocumentType;

    return-object v0
.end method
