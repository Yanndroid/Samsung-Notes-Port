.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctsettingsd6a5type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewActiveWritingStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWritingStyle;
.end method

.method public abstract addNewAlignBordersAndEdges()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewAlwaysMergeEmptyNamespace()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewAlwaysShowPlaceholderText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewAttachedSchema()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewAttachedTemplate()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract addNewAutoFormatOverride()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewAutoHyphenation()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewBookFoldPrinting()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewBookFoldPrintingSheets()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewBookFoldRevPrinting()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewBordersDoNotSurroundFooter()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewBordersDoNotSurroundHeader()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewCaptions()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCaptions;
.end method

.method public abstract addNewCharacterSpacingControl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCharacterSpacing;
.end method

.method public abstract addNewClickAndTypeStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewClrSchemeMapping()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColorSchemeMapping;
.end method

.method public abstract addNewCompat()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCompat;
.end method

.method public abstract addNewConsecutiveHyphenLimit()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewDecimalSymbol()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewDefaultTabStop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTwipsMeasure;
.end method

.method public abstract addNewDefaultTableStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewDisplayBackgroundShape()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDisplayHorizontalDrawingGridEvery()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewDisplayVerticalDrawingGridEvery()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewDoNotAutoCompressPictures()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotDemarcateInvalidXml()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotDisplayPageBoundaries()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotEmbedSmartTags()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotHyphenateCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotIncludeSubdocsInStats()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotShadeFormData()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotTrackFormatting()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotTrackMoves()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotUseMarginsForDrawingGridOrigin()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDoNotValidateAgainstSchema()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDocVars()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocVars;
.end method

.method public abstract addNewDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;
.end method

.method public abstract addNewDocumentType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocType;
.end method

.method public abstract addNewDrawingGridHorizontalOrigin()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTwipsMeasure;
.end method

.method public abstract addNewDrawingGridHorizontalSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTwipsMeasure;
.end method

.method public abstract addNewDrawingGridVerticalOrigin()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTwipsMeasure;
.end method

.method public abstract addNewDrawingGridVerticalSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTwipsMeasure;
.end method

.method public abstract addNewEmbedSystemFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewEmbedTrueTypeFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewEndnotePr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEdnDocProps;
.end method

.method public abstract addNewEvenAndOddHeaders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewFootnotePr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnDocProps;
.end method

.method public abstract addNewForceUpgrade()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewFormsDesign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewGutterAtTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewHdrShapeDefaults()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShapeDefaults;
.end method

.method public abstract addNewHideGrammaticalErrors()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewHideSpellingErrors()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewHyphenationZone()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTwipsMeasure;
.end method

.method public abstract addNewIgnoreMixedContent()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewLinkStyles()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewListSeparator()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewMailMerge()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMailMerge;
.end method

.method public abstract addNewMathPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMathPr;
.end method

.method public abstract addNewMirrorMargins()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewNoLineBreaksAfter()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTKinsoku;
.end method

.method public abstract addNewNoLineBreaksBefore()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTKinsoku;
.end method

.method public abstract addNewNoPunctuationKerning()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewPrintFormsData()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewPrintFractionalCharacterWidth()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewPrintPostScriptOverText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewPrintTwoOnOne()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewProofState()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProof;
.end method

.method public abstract addNewReadModeInkLockDown()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTReadingModeInkLockDown;
.end method

.method public abstract addNewRemoveDateAndTime()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewRemovePersonalInformation()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewRevisionView()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChangesView;
.end method

.method public abstract addNewRsids()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocRsids;
.end method

.method public abstract addNewSaveFormsData()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSaveInvalidXml()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSavePreviewPicture()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSaveSubsetFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSaveThroughXslt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSaveThroughXslt;
.end method

.method public abstract addNewSaveXmlDataOnly()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSchemaLibrary()Lorg/openxmlformats/schemas/schemaLibrary/x2006/main/CTSchemaLibrary;
.end method

.method public abstract addNewShapeDefaults()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShapeDefaults;
.end method

.method public abstract addNewShowEnvelope()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewShowXMLTags()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSmartTagType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagType;
.end method

.method public abstract addNewStrictFirstAndLastChars()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewStyleLockQFSet()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewStyleLockTheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewStylePaneFormatFilter()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShortHexNumber;
.end method

.method public abstract addNewStylePaneSortMethod()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShortHexNumber;
.end method

.method public abstract addNewSummaryLength()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewThemeFontLang()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;
.end method

.method public abstract addNewTrackRevisions()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewUiCompat97To2003()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewUpdateFields()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewUseXSLTWhenSaving()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewView()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTView;
.end method

.method public abstract addNewWriteProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWriteProtection;
.end method

.method public abstract addNewZoom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;
.end method

.method public abstract getActiveWritingStyleArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWritingStyle;
.end method

.method public abstract getActiveWritingStyleArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWritingStyle;
.end method

.method public abstract getActiveWritingStyleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWritingStyle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlignBordersAndEdges()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getAlwaysMergeEmptyNamespace()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getAlwaysShowPlaceholderText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getAttachedSchemaArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getAttachedSchemaArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getAttachedSchemaList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAttachedTemplate()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract getAutoFormatOverride()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getAutoHyphenation()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getBookFoldPrinting()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getBookFoldPrintingSheets()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getBookFoldRevPrinting()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getBordersDoNotSurroundFooter()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getBordersDoNotSurroundHeader()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getCaptions()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCaptions;
.end method

.method public abstract getCharacterSpacingControl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCharacterSpacing;
.end method

.method public abstract getClickAndTypeStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getClrSchemeMapping()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColorSchemeMapping;
.end method

.method public abstract getCompat()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCompat;
.end method

.method public abstract getConsecutiveHyphenLimit()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getDecimalSymbol()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getDefaultTabStop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTwipsMeasure;
.end method

.method public abstract getDefaultTableStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getDisplayBackgroundShape()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDisplayHorizontalDrawingGridEvery()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getDisplayVerticalDrawingGridEvery()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getDoNotAutoCompressPictures()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotDemarcateInvalidXml()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotDisplayPageBoundaries()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotEmbedSmartTags()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotHyphenateCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotIncludeSubdocsInStats()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotShadeFormData()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotTrackFormatting()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotTrackMoves()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotUseMarginsForDrawingGridOrigin()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDoNotValidateAgainstSchema()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDocVars()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocVars;
.end method

.method public abstract getDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;
.end method

.method public abstract getDocumentType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocType;
.end method

.method public abstract getDrawingGridHorizontalOrigin()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTwipsMeasure;
.end method

.method public abstract getDrawingGridHorizontalSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTwipsMeasure;
.end method

.method public abstract getDrawingGridVerticalOrigin()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTwipsMeasure;
.end method

.method public abstract getDrawingGridVerticalSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTwipsMeasure;
.end method

.method public abstract getEmbedSystemFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getEmbedTrueTypeFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getEndnotePr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEdnDocProps;
.end method

.method public abstract getEvenAndOddHeaders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getFootnotePr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnDocProps;
.end method

.method public abstract getForceUpgrade()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getFormsDesign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getGutterAtTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getHdrShapeDefaults()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShapeDefaults;
.end method

.method public abstract getHideGrammaticalErrors()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getHideSpellingErrors()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getHyphenationZone()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTwipsMeasure;
.end method

.method public abstract getIgnoreMixedContent()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getLinkStyles()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getListSeparator()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getMailMerge()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMailMerge;
.end method

.method public abstract getMathPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMathPr;
.end method

.method public abstract getMirrorMargins()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getNoLineBreaksAfter()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTKinsoku;
.end method

.method public abstract getNoLineBreaksBefore()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTKinsoku;
.end method

.method public abstract getNoPunctuationKerning()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getPrintFormsData()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getPrintFractionalCharacterWidth()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getPrintPostScriptOverText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getPrintTwoOnOne()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getProofState()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProof;
.end method

.method public abstract getReadModeInkLockDown()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTReadingModeInkLockDown;
.end method

.method public abstract getRemoveDateAndTime()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getRemovePersonalInformation()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getRevisionView()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChangesView;
.end method

.method public abstract getRsids()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocRsids;
.end method

.method public abstract getSaveFormsData()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSaveInvalidXml()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSavePreviewPicture()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSaveSubsetFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSaveThroughXslt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSaveThroughXslt;
.end method

.method public abstract getSaveXmlDataOnly()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSchemaLibrary()Lorg/openxmlformats/schemas/schemaLibrary/x2006/main/CTSchemaLibrary;
.end method

.method public abstract getShapeDefaults()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShapeDefaults;
.end method

.method public abstract getShowEnvelope()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getShowXMLTags()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSmartTagTypeArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagType;
.end method

.method public abstract getSmartTagTypeArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagType;
.end method

.method public abstract getSmartTagTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStrictFirstAndLastChars()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getStyleLockQFSet()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getStyleLockTheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getStylePaneFormatFilter()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShortHexNumber;
.end method

.method public abstract getStylePaneSortMethod()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShortHexNumber;
.end method

.method public abstract getSummaryLength()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getThemeFontLang()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;
.end method

.method public abstract getTrackRevisions()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getUiCompat97To2003()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getUpdateFields()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getUseXSLTWhenSaving()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getView()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTView;
.end method

.method public abstract getWriteProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWriteProtection;
.end method

.method public abstract getZoom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;
.end method

.method public abstract insertNewActiveWritingStyle(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWritingStyle;
.end method

.method public abstract insertNewAttachedSchema(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract insertNewSmartTagType(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagType;
.end method

.method public abstract isSetAlignBordersAndEdges()Z
.end method

.method public abstract isSetAlwaysMergeEmptyNamespace()Z
.end method

.method public abstract isSetAlwaysShowPlaceholderText()Z
.end method

.method public abstract isSetAttachedTemplate()Z
.end method

.method public abstract isSetAutoFormatOverride()Z
.end method

.method public abstract isSetAutoHyphenation()Z
.end method

.method public abstract isSetBookFoldPrinting()Z
.end method

.method public abstract isSetBookFoldPrintingSheets()Z
.end method

.method public abstract isSetBookFoldRevPrinting()Z
.end method

.method public abstract isSetBordersDoNotSurroundFooter()Z
.end method

.method public abstract isSetBordersDoNotSurroundHeader()Z
.end method

.method public abstract isSetCaptions()Z
.end method

.method public abstract isSetCharacterSpacingControl()Z
.end method

.method public abstract isSetClickAndTypeStyle()Z
.end method

.method public abstract isSetClrSchemeMapping()Z
.end method

.method public abstract isSetCompat()Z
.end method

.method public abstract isSetConsecutiveHyphenLimit()Z
.end method

.method public abstract isSetDecimalSymbol()Z
.end method

.method public abstract isSetDefaultTabStop()Z
.end method

.method public abstract isSetDefaultTableStyle()Z
.end method

.method public abstract isSetDisplayBackgroundShape()Z
.end method

.method public abstract isSetDisplayHorizontalDrawingGridEvery()Z
.end method

.method public abstract isSetDisplayVerticalDrawingGridEvery()Z
.end method

.method public abstract isSetDoNotAutoCompressPictures()Z
.end method

.method public abstract isSetDoNotDemarcateInvalidXml()Z
.end method

.method public abstract isSetDoNotDisplayPageBoundaries()Z
.end method

.method public abstract isSetDoNotEmbedSmartTags()Z
.end method

.method public abstract isSetDoNotHyphenateCaps()Z
.end method

.method public abstract isSetDoNotIncludeSubdocsInStats()Z
.end method

.method public abstract isSetDoNotShadeFormData()Z
.end method

.method public abstract isSetDoNotTrackFormatting()Z
.end method

.method public abstract isSetDoNotTrackMoves()Z
.end method

.method public abstract isSetDoNotUseMarginsForDrawingGridOrigin()Z
.end method

.method public abstract isSetDoNotValidateAgainstSchema()Z
.end method

.method public abstract isSetDocVars()Z
.end method

.method public abstract isSetDocumentProtection()Z
.end method

.method public abstract isSetDocumentType()Z
.end method

.method public abstract isSetDrawingGridHorizontalOrigin()Z
.end method

.method public abstract isSetDrawingGridHorizontalSpacing()Z
.end method

.method public abstract isSetDrawingGridVerticalOrigin()Z
.end method

.method public abstract isSetDrawingGridVerticalSpacing()Z
.end method

.method public abstract isSetEmbedSystemFonts()Z
.end method

.method public abstract isSetEmbedTrueTypeFonts()Z
.end method

.method public abstract isSetEndnotePr()Z
.end method

.method public abstract isSetEvenAndOddHeaders()Z
.end method

.method public abstract isSetFootnotePr()Z
.end method

.method public abstract isSetForceUpgrade()Z
.end method

.method public abstract isSetFormsDesign()Z
.end method

.method public abstract isSetGutterAtTop()Z
.end method

.method public abstract isSetHdrShapeDefaults()Z
.end method

.method public abstract isSetHideGrammaticalErrors()Z
.end method

.method public abstract isSetHideSpellingErrors()Z
.end method

.method public abstract isSetHyphenationZone()Z
.end method

.method public abstract isSetIgnoreMixedContent()Z
.end method

.method public abstract isSetLinkStyles()Z
.end method

.method public abstract isSetListSeparator()Z
.end method

.method public abstract isSetMailMerge()Z
.end method

.method public abstract isSetMathPr()Z
.end method

.method public abstract isSetMirrorMargins()Z
.end method

.method public abstract isSetNoLineBreaksAfter()Z
.end method

.method public abstract isSetNoLineBreaksBefore()Z
.end method

.method public abstract isSetNoPunctuationKerning()Z
.end method

.method public abstract isSetPrintFormsData()Z
.end method

.method public abstract isSetPrintFractionalCharacterWidth()Z
.end method

.method public abstract isSetPrintPostScriptOverText()Z
.end method

.method public abstract isSetPrintTwoOnOne()Z
.end method

.method public abstract isSetProofState()Z
.end method

.method public abstract isSetReadModeInkLockDown()Z
.end method

.method public abstract isSetRemoveDateAndTime()Z
.end method

.method public abstract isSetRemovePersonalInformation()Z
.end method

.method public abstract isSetRevisionView()Z
.end method

.method public abstract isSetRsids()Z
.end method

.method public abstract isSetSaveFormsData()Z
.end method

.method public abstract isSetSaveInvalidXml()Z
.end method

.method public abstract isSetSavePreviewPicture()Z
.end method

.method public abstract isSetSaveSubsetFonts()Z
.end method

.method public abstract isSetSaveThroughXslt()Z
.end method

.method public abstract isSetSaveXmlDataOnly()Z
.end method

.method public abstract isSetSchemaLibrary()Z
.end method

.method public abstract isSetShapeDefaults()Z
.end method

.method public abstract isSetShowEnvelope()Z
.end method

.method public abstract isSetShowXMLTags()Z
.end method

.method public abstract isSetStrictFirstAndLastChars()Z
.end method

.method public abstract isSetStyleLockQFSet()Z
.end method

.method public abstract isSetStyleLockTheme()Z
.end method

.method public abstract isSetStylePaneFormatFilter()Z
.end method

.method public abstract isSetStylePaneSortMethod()Z
.end method

.method public abstract isSetSummaryLength()Z
.end method

.method public abstract isSetThemeFontLang()Z
.end method

.method public abstract isSetTrackRevisions()Z
.end method

.method public abstract isSetUiCompat97To2003()Z
.end method

.method public abstract isSetUpdateFields()Z
.end method

.method public abstract isSetUseXSLTWhenSaving()Z
.end method

.method public abstract isSetView()Z
.end method

.method public abstract isSetWriteProtection()Z
.end method

.method public abstract isSetZoom()Z
.end method

.method public abstract removeActiveWritingStyle(I)V
.end method

.method public abstract removeAttachedSchema(I)V
.end method

.method public abstract removeSmartTagType(I)V
.end method

.method public abstract setActiveWritingStyleArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWritingStyle;)V
.end method

.method public abstract setActiveWritingStyleArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWritingStyle;)V
.end method

.method public abstract setAlignBordersAndEdges(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setAlwaysMergeEmptyNamespace(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setAlwaysShowPlaceholderText(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setAttachedSchemaArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setAttachedSchemaArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setAttachedTemplate(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;)V
.end method

.method public abstract setAutoFormatOverride(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setAutoHyphenation(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setBookFoldPrinting(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setBookFoldPrintingSheets(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setBookFoldRevPrinting(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setBordersDoNotSurroundFooter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setBordersDoNotSurroundHeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setCaptions(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCaptions;)V
.end method

.method public abstract setCharacterSpacingControl(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCharacterSpacing;)V
.end method

.method public abstract setClickAndTypeStyle(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setClrSchemeMapping(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColorSchemeMapping;)V
.end method

.method public abstract setCompat(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCompat;)V
.end method

.method public abstract setConsecutiveHyphenLimit(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setDecimalSymbol(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setDefaultTabStop(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTwipsMeasure;)V
.end method

.method public abstract setDefaultTableStyle(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setDisplayBackgroundShape(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDisplayHorizontalDrawingGridEvery(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setDisplayVerticalDrawingGridEvery(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setDoNotAutoCompressPictures(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotDemarcateInvalidXml(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotDisplayPageBoundaries(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotEmbedSmartTags(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotHyphenateCaps(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotIncludeSubdocsInStats(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotShadeFormData(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotTrackFormatting(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotTrackMoves(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotUseMarginsForDrawingGridOrigin(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDoNotValidateAgainstSchema(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDocVars(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocVars;)V
.end method

.method public abstract setDocumentProtection(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;)V
.end method

.method public abstract setDocumentType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocType;)V
.end method

.method public abstract setDrawingGridHorizontalOrigin(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTwipsMeasure;)V
.end method

.method public abstract setDrawingGridHorizontalSpacing(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTwipsMeasure;)V
.end method

.method public abstract setDrawingGridVerticalOrigin(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTwipsMeasure;)V
.end method

.method public abstract setDrawingGridVerticalSpacing(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTwipsMeasure;)V
.end method

.method public abstract setEmbedSystemFonts(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setEmbedTrueTypeFonts(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setEndnotePr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEdnDocProps;)V
.end method

.method public abstract setEvenAndOddHeaders(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setFootnotePr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnDocProps;)V
.end method

.method public abstract setForceUpgrade(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setFormsDesign(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setGutterAtTop(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setHdrShapeDefaults(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShapeDefaults;)V
.end method

.method public abstract setHideGrammaticalErrors(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setHideSpellingErrors(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setHyphenationZone(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTwipsMeasure;)V
.end method

.method public abstract setIgnoreMixedContent(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setLinkStyles(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setListSeparator(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setMailMerge(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMailMerge;)V
.end method

.method public abstract setMathPr(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMathPr;)V
.end method

.method public abstract setMirrorMargins(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setNoLineBreaksAfter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTKinsoku;)V
.end method

.method public abstract setNoLineBreaksBefore(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTKinsoku;)V
.end method

.method public abstract setNoPunctuationKerning(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setPrintFormsData(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setPrintFractionalCharacterWidth(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setPrintPostScriptOverText(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setPrintTwoOnOne(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setProofState(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProof;)V
.end method

.method public abstract setReadModeInkLockDown(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTReadingModeInkLockDown;)V
.end method

.method public abstract setRemoveDateAndTime(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setRemovePersonalInformation(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setRevisionView(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChangesView;)V
.end method

.method public abstract setRsids(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocRsids;)V
.end method

.method public abstract setSaveFormsData(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSaveInvalidXml(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSavePreviewPicture(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSaveSubsetFonts(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSaveThroughXslt(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSaveThroughXslt;)V
.end method

.method public abstract setSaveXmlDataOnly(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSchemaLibrary(Lorg/openxmlformats/schemas/schemaLibrary/x2006/main/CTSchemaLibrary;)V
.end method

.method public abstract setShapeDefaults(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShapeDefaults;)V
.end method

.method public abstract setShowEnvelope(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setShowXMLTags(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSmartTagTypeArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagType;)V
.end method

.method public abstract setSmartTagTypeArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagType;)V
.end method

.method public abstract setStrictFirstAndLastChars(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setStyleLockQFSet(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setStyleLockTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setStylePaneFormatFilter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShortHexNumber;)V
.end method

.method public abstract setStylePaneSortMethod(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShortHexNumber;)V
.end method

.method public abstract setSummaryLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setThemeFontLang(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;)V
.end method

.method public abstract setTrackRevisions(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setUiCompat97To2003(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setUpdateFields(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setUseXSLTWhenSaving(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setView(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTView;)V
.end method

.method public abstract setWriteProtection(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWriteProtection;)V
.end method

.method public abstract setZoom(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;)V
.end method

.method public abstract sizeOfActiveWritingStyleArray()I
.end method

.method public abstract sizeOfAttachedSchemaArray()I
.end method

.method public abstract sizeOfSmartTagTypeArray()I
.end method

.method public abstract unsetAlignBordersAndEdges()V
.end method

.method public abstract unsetAlwaysMergeEmptyNamespace()V
.end method

.method public abstract unsetAlwaysShowPlaceholderText()V
.end method

.method public abstract unsetAttachedTemplate()V
.end method

.method public abstract unsetAutoFormatOverride()V
.end method

.method public abstract unsetAutoHyphenation()V
.end method

.method public abstract unsetBookFoldPrinting()V
.end method

.method public abstract unsetBookFoldPrintingSheets()V
.end method

.method public abstract unsetBookFoldRevPrinting()V
.end method

.method public abstract unsetBordersDoNotSurroundFooter()V
.end method

.method public abstract unsetBordersDoNotSurroundHeader()V
.end method

.method public abstract unsetCaptions()V
.end method

.method public abstract unsetCharacterSpacingControl()V
.end method

.method public abstract unsetClickAndTypeStyle()V
.end method

.method public abstract unsetClrSchemeMapping()V
.end method

.method public abstract unsetCompat()V
.end method

.method public abstract unsetConsecutiveHyphenLimit()V
.end method

.method public abstract unsetDecimalSymbol()V
.end method

.method public abstract unsetDefaultTabStop()V
.end method

.method public abstract unsetDefaultTableStyle()V
.end method

.method public abstract unsetDisplayBackgroundShape()V
.end method

.method public abstract unsetDisplayHorizontalDrawingGridEvery()V
.end method

.method public abstract unsetDisplayVerticalDrawingGridEvery()V
.end method

.method public abstract unsetDoNotAutoCompressPictures()V
.end method

.method public abstract unsetDoNotDemarcateInvalidXml()V
.end method

.method public abstract unsetDoNotDisplayPageBoundaries()V
.end method

.method public abstract unsetDoNotEmbedSmartTags()V
.end method

.method public abstract unsetDoNotHyphenateCaps()V
.end method

.method public abstract unsetDoNotIncludeSubdocsInStats()V
.end method

.method public abstract unsetDoNotShadeFormData()V
.end method

.method public abstract unsetDoNotTrackFormatting()V
.end method

.method public abstract unsetDoNotTrackMoves()V
.end method

.method public abstract unsetDoNotUseMarginsForDrawingGridOrigin()V
.end method

.method public abstract unsetDoNotValidateAgainstSchema()V
.end method

.method public abstract unsetDocVars()V
.end method

.method public abstract unsetDocumentProtection()V
.end method

.method public abstract unsetDocumentType()V
.end method

.method public abstract unsetDrawingGridHorizontalOrigin()V
.end method

.method public abstract unsetDrawingGridHorizontalSpacing()V
.end method

.method public abstract unsetDrawingGridVerticalOrigin()V
.end method

.method public abstract unsetDrawingGridVerticalSpacing()V
.end method

.method public abstract unsetEmbedSystemFonts()V
.end method

.method public abstract unsetEmbedTrueTypeFonts()V
.end method

.method public abstract unsetEndnotePr()V
.end method

.method public abstract unsetEvenAndOddHeaders()V
.end method

.method public abstract unsetFootnotePr()V
.end method

.method public abstract unsetForceUpgrade()V
.end method

.method public abstract unsetFormsDesign()V
.end method

.method public abstract unsetGutterAtTop()V
.end method

.method public abstract unsetHdrShapeDefaults()V
.end method

.method public abstract unsetHideGrammaticalErrors()V
.end method

.method public abstract unsetHideSpellingErrors()V
.end method

.method public abstract unsetHyphenationZone()V
.end method

.method public abstract unsetIgnoreMixedContent()V
.end method

.method public abstract unsetLinkStyles()V
.end method

.method public abstract unsetListSeparator()V
.end method

.method public abstract unsetMailMerge()V
.end method

.method public abstract unsetMathPr()V
.end method

.method public abstract unsetMirrorMargins()V
.end method

.method public abstract unsetNoLineBreaksAfter()V
.end method

.method public abstract unsetNoLineBreaksBefore()V
.end method

.method public abstract unsetNoPunctuationKerning()V
.end method

.method public abstract unsetPrintFormsData()V
.end method

.method public abstract unsetPrintFractionalCharacterWidth()V
.end method

.method public abstract unsetPrintPostScriptOverText()V
.end method

.method public abstract unsetPrintTwoOnOne()V
.end method

.method public abstract unsetProofState()V
.end method

.method public abstract unsetReadModeInkLockDown()V
.end method

.method public abstract unsetRemoveDateAndTime()V
.end method

.method public abstract unsetRemovePersonalInformation()V
.end method

.method public abstract unsetRevisionView()V
.end method

.method public abstract unsetRsids()V
.end method

.method public abstract unsetSaveFormsData()V
.end method

.method public abstract unsetSaveInvalidXml()V
.end method

.method public abstract unsetSavePreviewPicture()V
.end method

.method public abstract unsetSaveSubsetFonts()V
.end method

.method public abstract unsetSaveThroughXslt()V
.end method

.method public abstract unsetSaveXmlDataOnly()V
.end method

.method public abstract unsetSchemaLibrary()V
.end method

.method public abstract unsetShapeDefaults()V
.end method

.method public abstract unsetShowEnvelope()V
.end method

.method public abstract unsetShowXMLTags()V
.end method

.method public abstract unsetStrictFirstAndLastChars()V
.end method

.method public abstract unsetStyleLockQFSet()V
.end method

.method public abstract unsetStyleLockTheme()V
.end method

.method public abstract unsetStylePaneFormatFilter()V
.end method

.method public abstract unsetStylePaneSortMethod()V
.end method

.method public abstract unsetSummaryLength()V
.end method

.method public abstract unsetThemeFontLang()V
.end method

.method public abstract unsetTrackRevisions()V
.end method

.method public abstract unsetUiCompat97To2003()V
.end method

.method public abstract unsetUpdateFields()V
.end method

.method public abstract unsetUseXSLTWhenSaving()V
.end method

.method public abstract unsetView()V
.end method

.method public abstract unsetWriteProtection()V
.end method

.method public abstract unsetZoom()V
.end method
