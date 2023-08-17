.class public final synthetic Lcom/samsung/android/support/senl/nt/coedit/control/presenter/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/a;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/a;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/a;->a:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/a;

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

    invoke-static {}, Landroid/os/Looper;->prepare()V

    return-void
.end method
