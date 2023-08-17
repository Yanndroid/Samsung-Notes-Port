.class public abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatPureImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$IClipboardManagerCompatImpl;
    }
.end annotation


# static fields
.field public static final CLIPBOARD_SAVE_SERVICE_PERMISSION:Ljava/lang/String; = "com.samsung.clipboardsaveservice.CLIPBOARDSAVESERVICE_PERMISSION"

.field private static final TAG:Ljava/lang/String; = "ClipboardManagerImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$IClipboardManagerCompatImpl;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/context/b;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatPureImpl;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatPureImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/context/a;)V

    return-object p1
.end method
