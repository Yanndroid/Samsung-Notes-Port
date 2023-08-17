.class public final Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Companion;,
        Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001b\u001cB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u000eR\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u000e\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;",
        "",
        "bundle",
        "Landroid/os/Bundle;",
        "(Landroid/os/Bundle;)V",
        "getBundle",
        "()Landroid/os/Bundle;",
        "command",
        "Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;",
        "getCommand",
        "()Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;",
        "headers",
        "",
        "getHeaders",
        "()Ljava/lang/String;",
        "promise",
        "Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;",
        "getPromise",
        "()Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;",
        "promiseId",
        "",
        "getPromiseId",
        "()Ljava/lang/Integer;",
        "query",
        "getQuery",
        "variable",
        "getVariable",
        "Builder",
        "Companion",
        "deepsky-sdk-2.2.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final bundle:Landroid/os/Bundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;->Companion:Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final getBundle()Landroid/os/Bundle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getCommand()Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;->bundle:Landroid/os/Bundle;

    const-string v1, "command"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;->Companion:Lcom/samsung/android/app/sdk/deepsky/contract/search/Command$Companion;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command$Companion;->fromId(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getHeaders()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;->bundle:Landroid/os/Bundle;

    const-string v1, "headers"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPromise()Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;->bundle:Landroid/os/Bundle;

    const-string v1, "promise"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;->Companion:Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise$Companion;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise$Companion;->parse(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getPromiseId()Ljava/lang/Integer;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;->bundle:Landroid/os/Bundle;

    const-string v1, "promise"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;->Companion:Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise$Companion;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise$Companion;->parse(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;->bundle:Landroid/os/Bundle;

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVariable()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;->bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "variable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
