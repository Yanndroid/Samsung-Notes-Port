.class public final synthetic Lcom/samsung/android/support/senl/nt/app/updater/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/samsung/android/support/senl/nt/app/updater/e;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/updater/e;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/updater/e;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/updater/e;->a:Lcom/samsung/android/support/senl/nt/app/updater/e;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->a()V

    return-void
.end method
