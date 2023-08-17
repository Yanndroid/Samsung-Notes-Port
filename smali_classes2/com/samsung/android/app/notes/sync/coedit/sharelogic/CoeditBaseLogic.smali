.class public abstract Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;

.field public c:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->c:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;-><init>(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->b:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;)Ljava/lang/Class;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->b()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public abstract c(Landroid/os/Message;)V
.end method

.method public d(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->a:Ljava/lang/Class;

    return-void
.end method
