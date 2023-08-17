.class public Lcom/samsung/android/support/senl/nt/data/contract/DataToComposerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/samsung/android/support/senl/nt/data/contract/DataToComposerManager;


# instance fields
.field private mParseHyperTextContract:Lcom/samsung/android/support/senl/nt/data/contract/ParseHyperTextContract;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/contract/DataToComposerManager;->mParseHyperTextContract:Lcom/samsung/android/support/senl/nt/data/contract/ParseHyperTextContract;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/data/contract/DataToComposerManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/data/contract/DataToComposerManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/contract/DataToComposerManager;->sInstance:Lcom/samsung/android/support/senl/nt/data/contract/DataToComposerManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/contract/DataToComposerManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/contract/DataToComposerManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/data/contract/DataToComposerManager;->sInstance:Lcom/samsung/android/support/senl/nt/data/contract/DataToComposerManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/contract/DataToComposerManager;->sInstance:Lcom/samsung/android/support/senl/nt/data/contract/DataToComposerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getParseHyperTextContract()Lcom/samsung/android/support/senl/nt/data/contract/ParseHyperTextContract;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/contract/DataToComposerManager;->mParseHyperTextContract:Lcom/samsung/android/support/senl/nt/data/contract/ParseHyperTextContract;

    return-object v0
.end method

.method public setParseHyperTextContract(Lcom/samsung/android/support/senl/nt/data/contract/ParseHyperTextContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/contract/DataToComposerManager;->mParseHyperTextContract:Lcom/samsung/android/support/senl/nt/data/contract/ParseHyperTextContract;

    return-void
.end method
