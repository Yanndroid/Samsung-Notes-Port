.class public interface abstract Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008f\u0018\u0000 \t*\n\u0008\u0000\u0010\u0001*\u0004\u0018\u00010\u00022\u00020\u0003:\u0001\tJ\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory;",
        "T",
        "Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;",
        "",
        "createEraserViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;",
        "createViewModel",
        "name",
        "",
        "Companion",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NAME:[Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory$Companion;

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->getPEN_NAMES()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory;->NAME:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract createEraserViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract createViewModel(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
