.class public final Lcom/samsung/android/app/sdk/deepsky/classifier/TextClassifierExtraUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1d
.end annotation


# static fields
.field public static final ACTION_ID:Ljava/lang/String; = "action-id"

.field public static final ENTITIES:Ljava/lang/String; = "entities"

.field public static final ENTITY_INDEX:Ljava/lang/String; = "entity-index"

.field public static final ENTITY_TYPE:Ljava/lang/String; = "entity-type"

.field private static final IS_DUPLICATED_ENTITY_ENABLED:Ljava/lang/String; = "is-duplicated-entity-enabled"

.field public static final TEXT:Ljava/lang/String; = "text"

.field private static final TYPE_UNKNOWN:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/textclassifier/TextClassification;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/sdk/deepsky/classifier/TextClassifierExtraUtils;->lambda$getEntityText$2(Landroid/view/textclassifier/TextClassification;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/os/Parcelable;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/sdk/deepsky/classifier/TextClassifierExtraUtils;->lambda$getEntityExtras$9(Landroid/os/Parcelable;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/sdk/deepsky/classifier/TextClassifierExtraUtils;->lambda$getEntityType$0(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(ILjava/util/ArrayList;)Landroid/os/Parcelable;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/classifier/TextClassifierExtraUtils;->lambda$getEntityExtras$8(ILjava/util/ArrayList;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/sdk/deepsky/classifier/TextClassifierExtraUtils;->lambda$getEntityText$1(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(I[I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/classifier/TextClassifierExtraUtils;->lambda$getEntityIndex$4(I[I)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/sdk/deepsky/classifier/TextClassifierExtraUtils;->lambda$getEntityExtras$6(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getActionId(Landroid/view/textclassifier/TextClassification;Landroid/app/RemoteAction;)Ljava/lang/String;
    .locals 0
    .param p0    # Landroid/view/textclassifier/TextClassification;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/RemoteAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/classifier/TextClassifierExtraUtils;->getEntityExtras(Landroid/view/textclassifier/TextClassification;Landroid/app/RemoteAction;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Le3/j;->a:Le3/j;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static getEntityExtras(Landroid/view/textclassifier/TextClassification;Landroid/app/RemoteAction;)Landroid/os/Bundle;
    .locals 1
    .param p0    # Landroid/view/textclassifier/TextClassification;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/RemoteAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/classifier/TextClassifierExtraUtils;->getEntityIndex(Landroid/os/Bundle;I)I

    move-result p1

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Le3/h;->a:Le3/h;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Le3/k;

    invoke-direct {v0, p1}, Le3/k;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Le3/a;

    invoke-direct {v0, p1}, Le3/a;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Le3/b;->a:Le3/b;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    const-class p1, Landroid/os/Bundle;

    new-instance v0, Le3/e;

    invoke-direct {v0, p1}, Le3/e;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method private static getEntityIndex(Landroid/os/Bundle;I)I
    .locals 1
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Le3/i;->a:Le3/i;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Le3/l;

    invoke-direct {v0, p1}, Le3/l;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Le3/d;

    invoke-direct {v0, p1}, Le3/d;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getEntityText(Landroid/view/textclassifier/TextClassification;Landroid/app/RemoteAction;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/view/textclassifier/TextClassification;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/RemoteAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/classifier/TextClassifierExtraUtils;->getEntityExtras(Landroid/view/textclassifier/TextClassification;Landroid/app/RemoteAction;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Le3/g;->a:Le3/g;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Le3/c;

    invoke-direct {v0, p0}, Le3/c;-><init>(Landroid/view/textclassifier/TextClassification;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getEntityType(Landroid/view/textclassifier/TextClassification;Landroid/app/RemoteAction;)Ljava/lang/String;
    .locals 0
    .param p0    # Landroid/view/textclassifier/TextClassification;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/RemoteAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/classifier/TextClassifierExtraUtils;->getEntityExtras(Landroid/view/textclassifier/TextClassification;Landroid/app/RemoteAction;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Le3/f;->a:Le3/f;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h(Landroid/os/Bundle;)[I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/sdk/deepsky/classifier/TextClassifierExtraUtils;->lambda$getEntityIndex$3(Landroid/os/Bundle;)[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(ILjava/util/ArrayList;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/classifier/TextClassifierExtraUtils;->lambda$getEntityExtras$7(ILjava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/sdk/deepsky/classifier/TextClassifierExtraUtils;->lambda$getActionId$10(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(I[I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/classifier/TextClassifierExtraUtils;->lambda$getEntityIndex$5(I[I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getActionId$10(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "action-id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getEntityExtras$6(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 1

    const-string v0, "entities"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getEntityExtras$7(ILjava/util/ArrayList;)Z
    .locals 0

    if-ltz p0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getEntityExtras$8(ILjava/util/ArrayList;)Landroid/os/Parcelable;
    .locals 0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    return-object p0
.end method

.method private static synthetic lambda$getEntityExtras$9(Landroid/os/Parcelable;)Z
    .locals 0

    instance-of p0, p0, Landroid/os/Bundle;

    return p0
.end method

.method private static synthetic lambda$getEntityIndex$3(Landroid/os/Bundle;)[I
    .locals 1

    const-string v0, "entity-index"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getEntityIndex$4(I[I)Z
    .locals 0

    array-length p1, p1

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getEntityIndex$5(I[I)Ljava/lang/Integer;
    .locals 0

    aget p0, p1, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getEntityText$1(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getEntityText$2(Landroid/view/textclassifier/TextClassification;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$getEntityType$0(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "entity-type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static putIsDuplicatedEntityEnabled(Landroid/os/Bundle;Z)V
    .locals 1

    const-string v0, "is-duplicated-entity-enabled"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
