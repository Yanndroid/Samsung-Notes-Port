.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mState:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ActionStateModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;->mState:I

    return-void
.end method


# virtual methods
.method public isState(I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;->mState:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setState(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;->mState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;->mState:I

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
