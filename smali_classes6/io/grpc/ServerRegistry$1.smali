.class Lio/grpc/ServerRegistry$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/ServerRegistry;->refreshProviders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/grpc/ServerProvider;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/ServerRegistry;


# direct methods
.method public constructor <init>(Lio/grpc/ServerRegistry;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/ServerRegistry$1;->this$0:Lio/grpc/ServerRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lio/grpc/ServerProvider;Lio/grpc/ServerProvider;)I
    .locals 0

    invoke-virtual {p1}, Lio/grpc/ServerProvider;->priority()I

    move-result p1

    invoke-virtual {p2}, Lio/grpc/ServerProvider;->priority()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/grpc/ServerProvider;

    check-cast p2, Lio/grpc/ServerProvider;

    invoke-virtual {p0, p1, p2}, Lio/grpc/ServerRegistry$1;->compare(Lio/grpc/ServerProvider;Lio/grpc/ServerProvider;)I

    move-result p1

    return p1
.end method
