.class abstract enum Lcom/google/common/collect/TreeMultiset$Aggregate;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Aggregate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/TreeMultiset$Aggregate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/TreeMultiset$Aggregate;

.field public static final enum DISTINCT:Lcom/google/common/collect/TreeMultiset$Aggregate;

.field public static final enum SIZE:Lcom/google/common/collect/TreeMultiset$Aggregate;


# direct methods
.method private static synthetic $values()[Lcom/google/common/collect/TreeMultiset$Aggregate;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/collect/TreeMultiset$Aggregate;

    sget-object v1, Lcom/google/common/collect/TreeMultiset$Aggregate;->SIZE:Lcom/google/common/collect/TreeMultiset$Aggregate;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/TreeMultiset$Aggregate;->DISTINCT:Lcom/google/common/collect/TreeMultiset$Aggregate;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/collect/TreeMultiset$Aggregate$1;

    const-string v1, "SIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultiset$Aggregate$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/TreeMultiset$Aggregate;->SIZE:Lcom/google/common/collect/TreeMultiset$Aggregate;

    new-instance v0, Lcom/google/common/collect/TreeMultiset$Aggregate$2;

    const-string v1, "DISTINCT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultiset$Aggregate$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/TreeMultiset$Aggregate;->DISTINCT:Lcom/google/common/collect/TreeMultiset$Aggregate;

    invoke-static {}, Lcom/google/common/collect/TreeMultiset$Aggregate;->$values()[Lcom/google/common/collect/TreeMultiset$Aggregate;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/TreeMultiset$Aggregate;->$VALUES:[Lcom/google/common/collect/TreeMultiset$Aggregate;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/TreeMultiset$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/TreeMultiset$Aggregate;
    .locals 1

    const-class v0, Lcom/google/common/collect/TreeMultiset$Aggregate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/TreeMultiset$Aggregate;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/TreeMultiset$Aggregate;
    .locals 1

    sget-object v0, Lcom/google/common/collect/TreeMultiset$Aggregate;->$VALUES:[Lcom/google/common/collect/TreeMultiset$Aggregate;

    invoke-virtual {v0}, [Lcom/google/common/collect/TreeMultiset$Aggregate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/TreeMultiset$Aggregate;

    return-object v0
.end method


# virtual methods
.method public abstract nodeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "*>;)I"
        }
    .end annotation
.end method

.method public abstract treeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)J
    .param p1    # Lcom/google/common/collect/TreeMultiset$AvlNode;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "*>;)J"
        }
    .end annotation
.end method
