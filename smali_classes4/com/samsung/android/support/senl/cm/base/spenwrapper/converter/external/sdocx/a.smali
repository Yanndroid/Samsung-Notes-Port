.class public final synthetic Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;

.field public final synthetic b:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/a;->a:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;

    iput-object p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/a;->b:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/a;->a:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/a;->b:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->a(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void
.end method
