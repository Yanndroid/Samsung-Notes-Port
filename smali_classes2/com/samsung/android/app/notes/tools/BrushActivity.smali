.class public final Lcom/samsung/android/app/notes/tools/BrushActivity;
.super Lcom/samsung/android/support/senl/addons/brush/AbsBrushActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0004H\u0014\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/samsung/android/app/notes/tools/BrushActivity;",
        "Lcom/samsung/android/support/senl/addons/brush/AbsBrushActivity;",
        "()V",
        "getConcreteClass",
        "Ljava/lang/Class;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/AbsBrushActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getConcreteClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Lcom/samsung/android/app/notes/tools/BrushActivity;

    return-object v0
.end method
