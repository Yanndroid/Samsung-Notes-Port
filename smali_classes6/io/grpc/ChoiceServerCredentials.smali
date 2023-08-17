.class public final Lio/grpc/ChoiceServerCredentials;
.super Lio/grpc/ServerCredentials;
.source "SourceFile"


# instance fields
.field private final creds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ServerCredentials;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>([Lio/grpc/ServerCredentials;)V
    .locals 3

    invoke-direct {p0}, Lio/grpc/ServerCredentials;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/ChoiceServerCredentials;->creds:Ljava/util/List;

    return-void
.end method

.method public static varargs create([Lio/grpc/ServerCredentials;)Lio/grpc/ServerCredentials;
    .locals 1

    array-length v0, p0

    if-eqz v0, :cond_0

    new-instance v0, Lio/grpc/ChoiceServerCredentials;

    invoke-direct {v0, p0}, Lio/grpc/ChoiceServerCredentials;-><init>([Lio/grpc/ServerCredentials;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one credential is required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCredentialsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ServerCredentials;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/ChoiceServerCredentials;->creds:Ljava/util/List;

    return-object v0
.end method
