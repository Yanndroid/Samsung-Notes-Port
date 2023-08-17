.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionMoveScroll;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mIsVertical:Z

.field private final mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ActionMoveScroll"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionMoveScroll;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionMoveScroll;->mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionMoveScroll;->mIsVertical:Z

    return-void
.end method

.method private executeDoAction(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionMoveScroll;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeDoAction# error arg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " / "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionMoveScroll;->mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionMoveScroll;->mIsVertical:Z

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;->moveScroll(ZZ)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public doAction(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionMoveScroll;->executeDoAction(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public doAction(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionMoveScroll;->executeDoAction(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
