.class Lcom/microsoft/identity/common/java/marker/CodeMarkerManager$CodeMarkerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodeMarkerHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;-><init>(Lcom/microsoft/identity/common/java/marker/CodeMarkerManager$1;)V

    sput-object v0, Lcom/microsoft/identity/common/java/marker/CodeMarkerManager$CodeMarkerHolder;->INSTANCE:Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
