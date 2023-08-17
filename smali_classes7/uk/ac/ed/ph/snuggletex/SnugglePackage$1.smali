.class Luk/ac/ed/ph/snuggletex/SnugglePackage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/SnugglePackage$LineHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/ac/ed/ph/snuggletex/SnugglePackage;->loadMathFunctionDefinitions(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Luk/ac/ed/ph/snuggletex/SnugglePackage;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/SnugglePackage;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage$1;->this$0:Luk/ac/ed/ph/snuggletex/SnugglePackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleLine(Ljava/lang/String;)V
    .locals 5

    const-string v0, "->"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    move-object p1, v2

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage$1;->this$0:Luk/ac/ed/ph/snuggletex/SnugglePackage;

    const/4 v3, 0x1

    new-array v3, v3, [Luk/ac/ed/ph/snuggletex/semantics/MathInterpretation;

    new-instance v4, Luk/ac/ed/ph/snuggletex/semantics/MathFunctionInterpretation;

    invoke-direct {v4, v0}, Luk/ac/ed/ph/snuggletex/semantics/MathFunctionInterpretation;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v1

    invoke-virtual {v2, p1, v3}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleMathCommand(Ljava/lang/String;[Luk/ac/ed/ph/snuggletex/semantics/MathInterpretation;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    return-void
.end method
