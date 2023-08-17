.class Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IConvertParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->convert(Landroid/content/Context;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/ISpenNoteDocManager;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IResourceGetter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;

.field public final synthetic val$resourceGetter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IResourceGetter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IResourceGetter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter$1;->this$0:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter$1;->val$resourceGetter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IResourceGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNoteComposer()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/INoteComposer;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter$1;->this$0:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->a(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;

    move-result-object v0

    return-object v0
.end method

.method public getResourceGetter()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IResourceGetter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter$1;->val$resourceGetter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IResourceGetter;

    return-object v0
.end method
