.class final Lcom/samsung/scsp/framework/core/util/ScspCorePreferences$LazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyHolder"
.end annotation


# static fields
.field private static final preferences:Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;-><init>(Lcom/samsung/scsp/framework/core/util/ScspCorePreferences$1;)V

    sput-object v0, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences$LazyHolder;->preferences:Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;
    .locals 1

    sget-object v0, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences$LazyHolder;->preferences:Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;

    return-object v0
.end method
