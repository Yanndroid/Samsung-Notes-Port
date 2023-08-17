.class public abstract Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/BaseLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/BaseLogic$BaseLogicHandler;
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

.field public b:Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/BaseLogic$BaseLogicHandler;

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

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/BaseLogic;->c:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/BaseLogic$BaseLogicHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/BaseLogic$BaseLogicHandler;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/BaseLogic;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/BaseLogic;->b:Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/BaseLogic$BaseLogicHandler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/BaseLogic;)Ljava/lang/Class;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/BaseLogic;->b()Ljava/lang/Class;

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

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/BaseLogic;->a:Ljava/lang/Class;

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

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/BaseLogic;->a:Ljava/lang/Class;

    return-void
.end method
