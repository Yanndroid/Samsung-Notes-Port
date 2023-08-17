.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/ConverterWrapperFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IConverterFactory;


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/ConverterWrapperFactory;->mContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public createDocumentConverter(I)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/ConverterWrapperFactory;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "ConverterWrapperFactory"

    const-string v0, "null context!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/EmptyConverterWrapper;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/EmptyConverterWrapper;-><init>()V

    return-object p1

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/EmptyConverterWrapper;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/EmptyConverterWrapper;-><init>()V

    return-object p1

    :pswitch_0
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/JsonConverterWrapper;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/JsonConverterWrapper;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_1
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/TMemoConverterWrapper;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/TMemoConverterWrapper;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/NMemoConverterWrapper;

    const-string v1, ""

    invoke-direct {p1, v0, v1, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/NMemoConverterWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/LMemoConverterWrapper;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/LMemoConverterWrapper;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/ScrapbookConverterWrapper;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/ScrapbookConverterWrapper;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/ConverterWrapperFactory;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/ConverterWrapperFactory;->mContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method
