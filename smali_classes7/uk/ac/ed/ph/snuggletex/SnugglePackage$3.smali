.class Luk/ac/ed/ph/snuggletex/SnugglePackage$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/SnugglePackage$LineHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/ac/ed/ph/snuggletex/SnugglePackage;->loadMathCharacterNegations(Ljava/lang/String;)V
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

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage$3;->this$0:Luk/ac/ed/ph/snuggletex/SnugglePackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleLine(Ljava/lang/String;)V
    .locals 3

    const-string v0, "->"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage$3;->this$0:Luk/ac/ed/ph/snuggletex/SnugglePackage;

    const-string v2, "Source command for negation"

    invoke-static {v1, p1, v2}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->access$100(Luk/ac/ed/ph/snuggletex/SnugglePackage;Ljava/lang/String;Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    move-result-object p1

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage$3;->this$0:Luk/ac/ed/ph/snuggletex/SnugglePackage;

    const-string v2, "Target command for negation"

    invoke-static {v1, v0, v2}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->access$100(Luk/ac/ed/ph/snuggletex/SnugglePackage;Ljava/lang/String;Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    move-result-object v0

    new-instance v1, Luk/ac/ed/ph/snuggletex/semantics/MathNegatableInterpretation;

    invoke-direct {v1, v0}, Luk/ac/ed/ph/snuggletex/semantics/MathNegatableInterpretation;-><init>(Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;)V

    invoke-virtual {p1, v1}, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->addInterpretation(Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V

    return-void
.end method
