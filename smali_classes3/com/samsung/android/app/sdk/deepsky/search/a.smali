.class public final synthetic Lcom/samsung/android/app/sdk/deepsky/search/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/search/Logger;


# static fields
.field public static final synthetic a:Lcom/samsung/android/app/sdk/deepsky/search/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/search/a;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/search/a;-><init>()V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/search/a;->a:Lcom/samsung/android/app/sdk/deepsky/search/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final log(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->e(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method
