.class public final Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Factory;
.implements Lcom/samsung/android/app/sdk/deepsky/search/Search;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00152\u00020\u00012\u00020\u0002:\u0001\u0015B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0010H\u0016J\u0015\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000bH\u0000\u00a2\u0006\u0002\u0008\u0014R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;",
        "Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Factory;",
        "Lcom/samsung/android/app/sdk/deepsky/search/Search;",
        "context",
        "Landroid/content/Context;",
        "contentProviderCaller",
        "Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;",
        "systemDatasource",
        "Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;",
        "(Landroid/content/Context;Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;)V",
        "commandSender",
        "Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;",
        "checkIfAccessAllowed",
        "",
        "query",
        "Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor;",
        "",
        "setSender",
        "",
        "sender",
        "setSender$deepsky_sdk_2_2_9_release",
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
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Search"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private commandSender:Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final contentProviderCaller:Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final systemDatasource:Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;->Companion:Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentProviderCaller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "systemDatasource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;->contentProviderCaller:Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;

    iput-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;->systemDatasource:Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;

    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl$commandSender$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl$commandSender$1;-><init>(Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;->commandSender:Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;

    return-void
.end method

.method public static final synthetic access$getContentProviderCaller$p(Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;)Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;->contentProviderCaller:Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;

    return-object p0
.end method

.method public static final synthetic access$getSystemDatasource$p(Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;)Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;->systemDatasource:Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;

    return-object p0
.end method


# virtual methods
.method public final checkIfAccessAllowed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;->commandSender:Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;-><init>(Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl$query$1;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl$query$1;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->logger(Lcom/samsung/android/app/sdk/deepsky/search/Logger;)Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor;

    move-result-object p1

    return-object p1
.end method

.method public final setSender$deepsky_sdk_2_2_9_release(Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;->commandSender:Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;

    return-void
.end method
