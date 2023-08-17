.class public final synthetic Lcom/samsung/android/support/senl/nt/app/updater/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/samsung/android/support/senl/nt/app/updater/f;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/updater/f;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/updater/f;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/updater/f;->a:Lcom/samsung/android/support/senl/nt/app/updater/f;

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

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->e()V

    return-void
.end method
