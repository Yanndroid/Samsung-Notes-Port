.class public interface abstract annotation Lcom/samsung/android/support/senl/nt/base/winset/app/popover/AlertDialogWrapper$AnchorType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/winset/app/popover/AlertDialogWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "AnchorType"
.end annotation


# static fields
.field public static final DEFAULT:I

.field public static final TOOLBAR:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;->getDefaultAnchorType()I

    move-result v0

    sput v0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/AlertDialogWrapper$AnchorType;->DEFAULT:I

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;->getToolbarAnchorType()I

    move-result v0

    sput v0, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/AlertDialogWrapper$AnchorType;->TOOLBAR:I

    return-void
.end method
