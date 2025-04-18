public class BlinkooFeedColorSchemeModel: BlinkooBaseModel {
    var primary: String
    var onPrimary: String
    var primaryContainer: String
    var onPrimaryContainer: String
    var secondary: String
    var onSecondary: String
    var secondaryContainer: String
    var onSecondaryContainer: String
    var tertiary: String
    var onTertiary: String
    var tertiaryContainer: String
    var onTertiaryContainer: String
    var error: String
    var errorContainer: String
    var onError: String
    var onErrorContainer: String
    var background: String
    var onBackground: String
    var surface: String
    var onSurface: String
    var surfaceVariant: String
    var onSurfaceVariant: String
    var outline: String
    var onInverseSurface: String
    var inverseSurface: String
    var inversePrimary: String
    var shadow: String
    var surfaceTint: String
    var outlineVariant: String
    var scrim: String
    
    init(primary: String, onPrimary: String, primaryContainer: String, onPrimaryContainer: String, secondary: String, onSecondary: String, secondaryContainer: String, onSecondaryContainer: String, tertiary: String, onTertiary: String, tertiaryContainer: String, onTertiaryContainer: String, error: String, errorContainer: String, onError: String, onErrorContainer: String, background: String, onBackground: String, surface: String, onSurface: String, surfaceVariant: String, onSurfaceVariant: String, outline: String, onInverseSurface: String, inverseSurface: String, inversePrimary: String, shadow: String, surfaceTint: String, outlineVariant: String, scrim: String) {
        self.primary = primary
        self.onPrimary = onPrimary
        self.primaryContainer = primaryContainer
        self.onPrimaryContainer = onPrimaryContainer
        self.secondary = secondary
        self.onSecondary = onSecondary
        self.secondaryContainer = secondaryContainer
        self.onSecondaryContainer = onSecondaryContainer
        self.tertiary = tertiary
        self.onTertiary = onTertiary
        self.tertiaryContainer = tertiaryContainer
        self.onTertiaryContainer = onTertiaryContainer
        self.error = error
        self.errorContainer = errorContainer
        self.onError = onError
        self.onErrorContainer = onErrorContainer
        self.background = background
        self.onBackground = onBackground
        self.surface = surface
        self.onSurface = onSurface
        self.surfaceVariant = surfaceVariant
        self.onSurfaceVariant = onSurfaceVariant
        self.outline = outline
        self.onInverseSurface = onInverseSurface
        self.inverseSurface = inverseSurface
        self.inversePrimary = inversePrimary
        self.shadow = shadow
        self.surfaceTint = surfaceTint
        self.outlineVariant = outlineVariant
        self.scrim = scrim
    }
}
